/** Make sure you have OpenSSL installed on your system and compile the code 
 *	with the -lssl -lcrypto flags to link against the OpenSSL library.*/
#include <stdio.h>
#include "aes.h"
#include "sha.h"

#define AES_BLOCK_SIZE 			16
#define SHA256_DIGEST_LENGTH    32
// Function to encrypt a HEX file
void encryptFile(const char* inputFile, const char* outputFile, const unsigned char* key) {
    FILE* inFile = fopen(inputFile, "rb");
    FILE* outFile = fopen(outputFile, "wb");

    unsigned char inBlock[AES_BLOCK_SIZE];
    unsigned char outBlock[AES_BLOCK_SIZE];
    AES_KEY aesKey;

    AES_set_encrypt_key(key, 128, &aesKey);

    while (fread(inBlock, 1, AES_BLOCK_SIZE, inFile) == AES_BLOCK_SIZE) {
        AES_encrypt(inBlock, outBlock, &aesKey);
        fwrite(outBlock, 1, AES_BLOCK_SIZE, outFile);
    }
    fclose(inFile);
    fclose(outFile);
	
}

// Function to calculate the SHA-256 hash of a file
void calculateHash(const char* inputFile, unsigned char* hash) {
    FILE* file = fopen(inputFile, "rb");
    SHA256_CTX sha256;
    unsigned char buffer[4096];
    int bytesRead;

    SHA256_Init(&sha256);

    while ((bytesRead = fread(buffer, 1, sizeof(buffer), file)) > 0) {
        SHA256_Update(&sha256, buffer, bytesRead);
    }

    SHA256_Final(hash, &sha256);

    fclose(file);
}

int main() {
    const char* inputFile = "FOTA_Bootloader.hex"; // my hex file
    const char* encryptedFile = "encrypted.bin";
    const char* decryptedFile = "decrypted.hex";

    // Encryption key (128-bit)
    const unsigned char key[AES_BLOCK_SIZE] = {
        0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
        0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F
    };

    // Encrypt the HEX file
    encryptFile(inputFile, encryptedFile, key);
    printf("File encrypted successfully!\n");

    // Calculate the hash of the encrypted file
    unsigned char hash[SHA256_DIGEST_LENGTH];
    calculateHash(encryptedFile, hash);

    printf("Hash: ");
    for (int i = 0; i < SHA256_DIGEST_LENGTH; i++) {
        printf("%02x", hash[i]);
    }
    printf("\n");

    return 0;
}