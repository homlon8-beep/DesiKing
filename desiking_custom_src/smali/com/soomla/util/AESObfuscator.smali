.class public Lcom/soomla/util/AESObfuscator;
.super Ljava/lang/Object;
.source "AESObfuscator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soomla/util/AESObfuscator$ValidationException;
    }
.end annotation


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final IV:[B

.field private static final KEYGEN_ALGORITHM:Ljava/lang/String; = "PBEWITHSHAAND256BITAES-CBC-BC"

.field private static final TAG:Ljava/lang/String; = "SOOMLA AESObfuscator"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final header:Ljava/lang/String; = "com.soomla.billing.util.AESObfuscator-1|"


# instance fields
.field private mDecryptor:Ljavax/crypto/Cipher;

.field private mEncryptor:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/soomla/util/AESObfuscator;->IV:[B

    return-void

    :array_0
    .array-data 1
        0x10t
        0x4at
        0x47t
        -0x50t
        0x20t
        0x65t
        -0x2ft
        0x48t
        0x75t
        -0xet
        0x0t
        -0x1dt
        0x46t
        0x41t
        -0xct
        0x4at
    .end array-data
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "salt"    # [B
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v8, 0x0

    .line 67
    .local v8, "passwordData":[B
    sget-object v9, Lcom/soomla/Soomla;->SECRET:Ljava/lang/String;

    .line 68
    .local v9, "sec":Ljava/lang/String;
    const-string v11, "SOOMLA_SEC"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 69
    const-string v11, "SOOMLA AESObfuscator"

    const-string v12, "You didn\'t provide a SOOMLA secret!!! Stopping now!"

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    :try_start_0
    const-string v11, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-static {v11}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 77
    .local v4, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v6, Ljavax/crypto/spec/PBEKeySpec;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    const/16 v12, 0x400

    const/16 v13, 0x100

    move-object/from16 v0, p1

    invoke-direct {v6, v11, v0, v12, v13}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 79
    .local v6, "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {v4, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v11

    invoke-interface {v11}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 98
    .end local v4    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v6    # "keySpec":Ljava/security/spec/KeySpec;
    :goto_0
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "AES"

    invoke-direct {v10, v8, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 100
    .local v10, "secret":Ljavax/crypto/SecretKey;
    :try_start_1
    const-string v11, "AES/CBC/PKCS5Padding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v11

    iput-object v11, p0, Lcom/soomla/util/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    .line 101
    iget-object v11, p0, Lcom/soomla/util/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    const/4 v12, 0x1

    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v14, Lcom/soomla/util/AESObfuscator;->IV:[B

    invoke-direct {v13, v14}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v11, v12, v10, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 102
    const-string v11, "AES/CBC/PKCS5Padding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v11

    iput-object v11, p0, Lcom/soomla/util/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    .line 103
    iget-object v11, p0, Lcom/soomla/util/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    const/4 v12, 0x2

    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v14, Lcom/soomla/util/AESObfuscator;->IV:[B

    invoke-direct {v13, v14}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v11, v12, v10, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 108
    return-void

    .line 80
    .end local v10    # "secret":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const-string v11, "SOOMLA AESObfuscator"

    const-string v12, "Probably an incompatible device. Trying different approach."

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "digester":Ljava/security/MessageDigest;
    :try_start_2
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 87
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 88
    .local v7, "password":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v11, v7

    if-ge v5, v11, :cond_1

    .line 89
    aget-char v11, v7, v5

    int-to-byte v11, v11

    invoke-virtual {v1, v11}, Ljava/security/MessageDigest;->update(B)V

    .line 88
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    goto :goto_0

    .line 92
    .end local v5    # "i":I
    .end local v7    # "password":[C
    :catch_1
    move-exception v3

    .line 94
    .local v3, "e1":Ljava/security/NoSuchAlgorithmException;
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Invalid environment"

    invoke-direct {v11, v12, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 104
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .end local v3    # "e1":Ljava/security/NoSuchAlgorithmException;
    .restart local v10    # "secret":Ljavax/crypto/SecretKey;
    :catch_2
    move-exception v2

    .line 106
    .restart local v2    # "e":Ljava/security/GeneralSecurityException;
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Invalid environment 2"

    invoke-direct {v11, v12, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method


# virtual methods
.method public obfuscateInt(I)Ljava/lang/String;
    .locals 2
    .param p1, "original"    # I

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soomla/util/AESObfuscator;->obfuscateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized obfuscateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    .end local p1    # "original":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object p1

    .restart local p1    # "original":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/soomla/util/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.soomla.billing.util.AESObfuscator-1|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/soomla/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 123
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public unobfuscateToInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "obfuscated"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/util/AESObfuscator$ValidationException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/soomla/util/AESObfuscator;->unobfuscateToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized unobfuscateToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "obfuscated"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/util/AESObfuscator$ValidationException;
        }
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    const/4 v3, 0x0

    .line 145
    :goto_0
    monitor-exit p0

    return-object v3

    .line 137
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/soomla/util/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    invoke-static {p1}, Lcom/soomla/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 140
    .local v2, "result":Ljava/lang/String;
    const-string v3, "com.soomla.billing.util.AESObfuscator-1|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, "headerIndex":I
    if-eqz v1, :cond_1

    .line 142
    new-instance v3, Lcom/soomla/util/AESObfuscator$ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header not found (invalid data or key):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/soomla/util/AESObfuscator$ValidationException;-><init>(Lcom/soomla/util/AESObfuscator;Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/soomla/util/Base64DecoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .end local v1    # "headerIndex":I
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lcom/soomla/util/Base64DecoderException;
    :try_start_2
    new-instance v3, Lcom/soomla/util/AESObfuscator$ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/soomla/util/Base64DecoderException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/soomla/util/AESObfuscator$ValidationException;-><init>(Lcom/soomla/util/AESObfuscator;Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    .end local v0    # "e":Lcom/soomla/util/Base64DecoderException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 145
    .restart local v1    # "headerIndex":I
    .restart local v2    # "result":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v3, "com.soomla.billing.util.AESObfuscator-1|"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Lcom/soomla/util/Base64DecoderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 148
    .end local v1    # "headerIndex":I
    .end local v2    # "result":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    :try_start_4
    new-instance v3, Lcom/soomla/util/AESObfuscator$ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/soomla/util/AESObfuscator$ValidationException;-><init>(Lcom/soomla/util/AESObfuscator;Ljava/lang/String;)V

    throw v3

    .line 150
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v0

    .line 151
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Lcom/soomla/util/AESObfuscator$ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/soomla/util/AESObfuscator$ValidationException;-><init>(Lcom/soomla/util/AESObfuscator;Ljava/lang/String;)V

    throw v3

    .line 152
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid environment"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
