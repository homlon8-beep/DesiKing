.class public Lcom/androidnative/features/CameraAPI;
.super Ljava/lang/Object;
.source "CameraAPI.java"

# interfaces
.implements Lcom/kbeanie/imagechooser/api/ImageChooserListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field private static CAMERA_SERVICE_LISTNER_NAME:Ljava/lang/String;

.field private static GalleryFolderName:Ljava/lang/String;

.field private static MaxImageAllowedSize:I

.field private static RESULT_IMAGE_CAPTURE:I

.field private static SaveCameraImageToGallery:Z

.field private static TakeFullSizePhoto:Z

.field private static _instance:Lcom/androidnative/features/CameraAPI;

.field private static imageChooserManager:Lcom/kbeanie/imagechooser/api/ImageChooserManager;

.field private static mCurrentPhotoPath:Ljava/lang/String;


# instance fields
.field GalleryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const/16 v0, 0xb72

    sput v0, Lcom/androidnative/features/CameraAPI;->RESULT_IMAGE_CAPTURE:I

    .line 44
    const-string v0, "AndroidCamera"

    sput-object v0, Lcom/androidnative/features/CameraAPI;->CAMERA_SERVICE_LISTNER_NAME:Ljava/lang/String;

    .line 47
    sput-object v1, Lcom/androidnative/features/CameraAPI;->_instance:Lcom/androidnative/features/CameraAPI;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/androidnative/features/CameraAPI;->SaveCameraImageToGallery:Z

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/androidnative/features/CameraAPI;->TakeFullSizePhoto:Z

    .line 51
    sput-object v1, Lcom/androidnative/features/CameraAPI;->GalleryFolderName:Ljava/lang/String;

    .line 52
    const/16 v0, 0x400

    sput v0, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    .line 397
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidnative/features/CameraAPI;->GalleryList:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public static GetInstance()Lcom/androidnative/features/CameraAPI;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/androidnative/features/CameraAPI;->_instance:Lcom/androidnative/features/CameraAPI;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/androidnative/features/CameraAPI;

    invoke-direct {v0}, Lcom/androidnative/features/CameraAPI;-><init>()V

    sput-object v0, Lcom/androidnative/features/CameraAPI;->_instance:Lcom/androidnative/features/CameraAPI;

    .line 61
    :cond_0
    sget-object v0, Lcom/androidnative/features/CameraAPI;->_instance:Lcom/androidnative/features/CameraAPI;

    return-object v0
.end method

.method private createImageFile()Ljava/io/File;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 402
    iget-object v0, p0, Lcom/androidnative/features/CameraAPI;->GalleryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 403
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    aput-object v0, v2, v12

    .line 405
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 406
    .local v6, "c":Landroid/database/Cursor;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 409
    .local v1, "u":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 410
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 414
    :cond_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/androidnative/features/CameraAPI;->GalleryList:Ljava/util/ArrayList;

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    :cond_2
    const-string v0, "AndroidNative"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SaveToGalalry MEDIS FILES LIST "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/androidnative/features/CameraAPI;->GalleryList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v0, "AndroidNative"

    const-string v3, "createImageFile: "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 425
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 426
    .local v11, "timeStamp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "JPEG_CAMERASHOT_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 427
    .local v9, "imageFileName":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    .line 429
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 430
    sget-object v3, Lcom/androidnative/features/CameraAPI;->GalleryFolderName:Ljava/lang/String;

    .line 427
    invoke-direct {v10, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 431
    .local v10, "imageRoot":Ljava/io/File;
    const-string v0, "AndroidNative"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GalleryFolderName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/androidnative/features/CameraAPI;->GalleryFolderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v0, "AndroidNative"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "imageRoot folder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 436
    const/4 v8, 0x0

    .line 439
    .local v8, "image":Ljava/io/File;
    :try_start_0
    const-string v0, ".jpg"

    .line 438
    invoke-static {v9, v0, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 448
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "file:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidnative/features/CameraAPI;->mCurrentPhotoPath:Ljava/lang/String;

    .line 449
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidnative/features/CameraAPI;->mCurrentPhotoPath:Ljava/lang/String;

    .line 451
    const-string v0, "AndroidNative"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mCurrentPhotoPath: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/androidnative/features/CameraAPI;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-object v8

    .line 442
    :catch_0
    move-exception v7

    .line 443
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "AndroidNative"

    const-string v3, "Failed To create temp File: "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private galleryAddPic()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v2, Landroid/content/Intent;

    .line 166
    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 165
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "mediaScanIntent":Landroid/content/Intent;
    const-string v3, "AndroidNative"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Saving captured picture to: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    sget-object v5, Lcom/androidnative/features/CameraAPI;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/androidnative/features/CameraAPI;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 171
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 172
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    return-void
.end method


# virtual methods
.method public GetImageFromCamera(Z)V
    .locals 4
    .param p1, "bSaveToGallery"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 368
    sput-boolean p1, Lcom/androidnative/features/CameraAPI;->TakeFullSizePhoto:Z

    .line 370
    const-string v2, "AndroidNative"

    const-string v3, "GetImageFromCamera: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, "takePictureIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 372
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 375
    sget-boolean v2, Lcom/androidnative/features/CameraAPI;->TakeFullSizePhoto:Z

    if-eqz v2, :cond_2

    .line 376
    invoke-direct {p0}, Lcom/androidnative/features/CameraAPI;->createImageFile()Ljava/io/File;

    move-result-object v0

    .line 378
    .local v0, "photoFile":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 379
    const-string v2, "AndroidNative"

    const-string v3, "Getting full size photo: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v2, "output"

    .line 381
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 380
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    sget v2, Lcom/androidnative/features/CameraAPI;->RESULT_IMAGE_CAPTURE:I

    .line 382
    invoke-static {v1, v2}, Lcom/androidnative/AndroidNativeProxy;->startProxyForResult(Landroid/content/Intent;I)V

    .line 395
    .end local v0    # "photoFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 385
    .restart local v0    # "photoFile":Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/androidnative/features/CameraAPI;->TakeFullSizePhoto:Z

    .line 387
    sget v2, Lcom/androidnative/features/CameraAPI;->RESULT_IMAGE_CAPTURE:I

    .line 386
    invoke-static {v1, v2}, Lcom/androidnative/AndroidNativeProxy;->startProxyForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 391
    .end local v0    # "photoFile":Ljava/io/File;
    :cond_2
    sget v2, Lcom/androidnative/features/CameraAPI;->RESULT_IMAGE_CAPTURE:I

    .line 390
    invoke-static {v1, v2}, Lcom/androidnative/AndroidNativeProxy;->startProxyForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public GetImageFromGallery()V
    .locals 0

    .prologue
    .line 363
    invoke-static {}, Lcom/androidnative/AndroidNativeProxy;->startImageChooserProxy()V

    .line 364
    return-void
.end method

.method public Init(Ljava/lang/String;II)V
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "maxSize"    # I
    .param p3, "mode"    # I

    .prologue
    .line 66
    sput-object p1, Lcom/androidnative/features/CameraAPI;->GalleryFolderName:Ljava/lang/String;

    .line 67
    sput p2, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    .line 69
    if-eqz p3, :cond_0

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/androidnative/features/CameraAPI;->TakeFullSizePhoto:Z

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/androidnative/features/CameraAPI;->TakeFullSizePhoto:Z

    goto :goto_0
.end method

.method public SaveToGalalry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "ImageData"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/androidnative/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 83
    .local v5, "byteArray":[B
    const/4 v15, 0x0

    array-length v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v5, v15, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 85
    .local v4, "bmp":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 87
    .local v8, "fOut":Ljava/io/OutputStream;
    sget-object v3, Lcom/androidnative/features/CameraAPI;->GalleryFolderName:Ljava/lang/String;

    .line 88
    .local v3, "appDirectoryName":Ljava/lang/String;
    const-string v15, "AndroidNative"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "appDirectoryName: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v10, Ljava/io/File;

    .line 91
    sget-object v15, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v15}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 89
    invoke-direct {v10, v15, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v10, "imageRoot":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 96
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ".jpg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "FileName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v9, "file":Ljava/io/File;
    const/4 v11, 0x1

    .line 99
    .local v11, "index":I
    :goto_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 107
    const-string v15, "AndroidNative"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, " FileName: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v15, "AndroidNative"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "is esixts: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v8, Ljava/io/FileOutputStream;

    .end local v8    # "fOut":Ljava/io/OutputStream;
    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 112
    .restart local v8    # "fOut":Ljava/io/OutputStream;
    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v16, 0x64

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 114
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 115
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 121
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v14, "values":Landroid/content/ContentValues;
    const-string v15, "title"

    move-object/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v15, "description"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v15, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    const-string v15, "bucket_id"

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    .line 126
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 125
    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v15, "bucket_display_name"

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    .line 128
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 127
    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v15, "_data"

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v15

    .line 132
    invoke-virtual {v15}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 133
    .local v6, "cr":Landroid/content/ContentResolver;
    sget-object v15, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v15, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 135
    .local v13, "path":Landroid/net/Uri;
    const-string v15, "AndroidNative"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Saved: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v15, Lcom/androidnative/features/CameraAPI;->CAMERA_SERVICE_LISTNER_NAME:Ljava/lang/String;

    .line 138
    const-string v16, "OnImageSavedEvent"

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    .line 137
    invoke-static/range {v15 .. v17}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v12, Landroid/content/Intent;

    .line 142
    const-string v15, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 141
    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v12, "mediaScanIntent":Landroid/content/Intent;
    invoke-virtual {v12, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 144
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    .end local v2    # "FileName":Ljava/lang/String;
    .end local v3    # "appDirectoryName":Ljava/lang/String;
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v5    # "byteArray":[B
    .end local v6    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "fOut":Ljava/io/OutputStream;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "imageRoot":Ljava/io/File;
    .end local v11    # "index":I
    .end local v12    # "mediaScanIntent":Landroid/content/Intent;
    .end local v13    # "path":Landroid/net/Uri;
    .end local v14    # "values":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 101
    .restart local v2    # "FileName":Ljava/lang/String;
    .restart local v3    # "appDirectoryName":Ljava/lang/String;
    .restart local v4    # "bmp":Landroid/graphics/Bitmap;
    .restart local v5    # "byteArray":[B
    .restart local v8    # "fOut":Ljava/io/OutputStream;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "imageRoot":Ljava/io/File;
    .restart local v11    # "index":I
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".jpg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    new-instance v9, Ljava/io/File;

    .end local v9    # "file":Ljava/io/File;
    invoke-direct {v9, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .restart local v9    # "file":Ljava/io/File;
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 146
    .end local v2    # "FileName":Ljava/lang/String;
    .end local v3    # "appDirectoryName":Ljava/lang/String;
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v5    # "byteArray":[B
    .end local v8    # "fOut":Ljava/io/OutputStream;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "imageRoot":Ljava/io/File;
    .end local v11    # "index":I
    :catch_0
    move-exception v7

    .line 147
    .local v7, "e":Ljava/lang/Exception;
    const-string v15, "AndroidNative"

    const-string v16, "Not saved"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v15, Lcom/androidnative/features/CameraAPI;->CAMERA_SERVICE_LISTNER_NAME:Ljava/lang/String;

    .line 149
    const-string v16, "OnImageSaveFailedEvent"

    const-string v17, ""

    .line 148
    invoke-static/range {v15 .. v17}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public StartImageChooser(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 353
    :try_start_0
    new-instance v1, Lcom/kbeanie/imagechooser/api/ImageChooserManager;

    .line 354
    const/16 v2, 0x123

    .line 353
    invoke-direct {v1, p1, v2}, Lcom/kbeanie/imagechooser/api/ImageChooserManager;-><init>(Landroid/app/Activity;I)V

    sput-object v1, Lcom/androidnative/features/CameraAPI;->imageChooserManager:Lcom/kbeanie/imagechooser/api/ImageChooserManager;

    .line 355
    sget-object v1, Lcom/androidnative/features/CameraAPI;->imageChooserManager:Lcom/kbeanie/imagechooser/api/ImageChooserManager;

    invoke-virtual {v1, p0}, Lcom/kbeanie/imagechooser/api/ImageChooserManager;->setImageChooserListener(Lcom/kbeanie/imagechooser/api/ImageChooserListener;)V

    .line 356
    sget-object v1, Lcom/androidnative/features/CameraAPI;->imageChooserManager:Lcom/kbeanie/imagechooser/api/ImageChooserManager;

    invoke-virtual {v1}, Lcom/kbeanie/imagechooser/api/ImageChooserManager;->choose()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBytesFromBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 156
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 30
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 179
    const/16 v22, 0x0

    .line 181
    .local v22, "result":Ljava/lang/StringBuilder;
    const/16 v2, 0x123

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 182
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 183
    sget-object v2, Lcom/androidnative/features/CameraAPI;->imageChooserManager:Lcom/kbeanie/imagechooser/api/ImageChooserManager;

    if-nez v2, :cond_0

    .line 184
    new-instance v2, Lcom/kbeanie/imagechooser/api/ImageChooserManager;

    .line 185
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v5

    .line 186
    const/16 v6, 0x123

    .line 184
    invoke-direct {v2, v5, v6}, Lcom/kbeanie/imagechooser/api/ImageChooserManager;-><init>(Landroid/app/Activity;I)V

    sput-object v2, Lcom/androidnative/features/CameraAPI;->imageChooserManager:Lcom/kbeanie/imagechooser/api/ImageChooserManager;

    .line 187
    sget-object v2, Lcom/androidnative/features/CameraAPI;->imageChooserManager:Lcom/kbeanie/imagechooser/api/ImageChooserManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/kbeanie/imagechooser/api/ImageChooserManager;->setImageChooserListener(Lcom/kbeanie/imagechooser/api/ImageChooserListener;)V

    .line 190
    :cond_0
    sget-object v2, Lcom/androidnative/features/CameraAPI;->imageChooserManager:Lcom/kbeanie/imagechooser/api/ImageChooserManager;

    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/kbeanie/imagechooser/api/ImageChooserManager;->submit(ILandroid/content/Intent;)V

    .line 347
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    new-instance v22, Ljava/lang/StringBuilder;

    .end local v22    # "result":Ljava/lang/StringBuilder;
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .restart local v22    # "result":Ljava/lang/StringBuilder;
    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v2, "|"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v2, "|"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    sget-object v2, Lcom/androidnative/features/CameraAPI;->CAMERA_SERVICE_LISTNER_NAME:Ljava/lang/String;

    .line 199
    const-string v5, "OnImagePickedEvent"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-static {v2, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_3
    sget v2, Lcom/androidnative/features/CameraAPI;->RESULT_IMAGE_CAPTURE:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 207
    const-string v2, "AndroidNative"

    const-string v5, "RESULT_IMAGE_CAPTURE captured "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v22, Ljava/lang/StringBuilder;

    .end local v22    # "result":Ljava/lang/StringBuilder;
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .restart local v22    # "result":Ljava/lang/StringBuilder;
    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, "|"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_f

    .line 213
    const-string v2, "AndroidNative"

    .line 214
    const-string v5, "RESULT_IMAGE_CAPTURE captured. ActivityResult RESULT_OK"

    .line 213
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-boolean v2, Lcom/androidnative/features/CameraAPI;->TakeFullSizePhoto:Z

    if-eqz v2, :cond_d

    .line 216
    new-instance v16, Ljava/io/File;

    sget-object v2, Lcom/androidnative/features/CameraAPI;->mCurrentPhotoPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v16, "img":Ljava/io/File;
    const-string v2, "AndroidNative"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "image is exsist: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v2, "AndroidNative"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "image size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v2, Lcom/androidnative/features/CameraAPI;->mCurrentPhotoPath:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v2, "|"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 224
    .local v11, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 225
    sget-object v2, Lcom/androidnative/features/CameraAPI;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-static {v2, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 227
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    .line 228
    .local v21, "photoW":I
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v20, v0

    .line 230
    .local v20, "photoH":I
    const/16 v24, 0x1

    .line 231
    .local v24, "scaleFactor":I
    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 232
    sget v2, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    div-int v24, v21, v2

    .line 237
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 238
    move/from16 v0, v24

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 239
    const/4 v2, 0x1

    iput-boolean v2, v11, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 241
    sget-object v2, Lcom/androidnative/features/CameraAPI;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-static {v2, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 244
    .local v9, "b":Landroid/graphics/Bitmap;
    sget v26, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    .line 245
    .local v26, "w":I
    sget v15, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    .line 246
    .local v15, "h":I
    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 247
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 248
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 247
    div-float v8, v2, v5

    .line 249
    .local v8, "aspect":F
    sget v2, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    int-to-float v2, v2

    div-float v18, v2, v8

    .line 250
    .local v18, "new_height":F
    move/from16 v0, v18

    float-to-int v15, v0

    .line 257
    .end local v18    # "new_height":F
    :goto_2
    const-string v2, "AndroidNative"

    const-string v5, "It\'s time to create scaled Bitmap"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v2, 0x0

    .line 259
    move/from16 v0, v26

    invoke-static {v9, v0, v15, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 262
    .local v25, "scaledBitmap":Landroid/graphics/Bitmap;
    const-string v2, "AndroidNative"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "w: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 263
    const-string v6, " h: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/androidnative/features/CameraAPI;->getBytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/androidnative/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v17

    .line 266
    .local v17, "imgString":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 271
    const-string v5, "_size"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 272
    const-string v5, "_display_name"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    .line 273
    const-string v5, "_data"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    .line 274
    const-string v5, "_id"

    aput-object v5, v4, v2

    .line 277
    .local v4, "projection":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 278
    .local v12, "c":Landroid/database/Cursor;
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 279
    .local v3, "u":Landroid/net/Uri;
    if-eqz v16, :cond_7

    .line 281
    if-eqz v3, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v28, 0x0

    cmp-long v2, v6, v28

    if-lez v2, :cond_4

    .line 282
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 286
    :cond_4
    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 289
    :cond_5
    const/4 v10, 0x0

    .line 290
    .local v10, "bFound":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidnative/features/CameraAPI;->GalleryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_b

    .line 298
    :goto_3
    if-nez v10, :cond_c

    .line 299
    const-string v2, "AndroidNative"

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DELETE IMAGE _id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    const/4 v6, 0x1

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 302
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 303
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 300
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 306
    .local v13, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v13, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    .end local v10    # "bFound":Z
    .end local v13    # "cr":Landroid/content/ContentResolver;
    :cond_7
    :goto_4
    sget-boolean v2, Lcom/androidnative/features/CameraAPI;->SaveCameraImageToGallery:Z

    if-eqz v2, :cond_8

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/androidnative/features/CameraAPI;->galleryAddPic()V

    .line 343
    .end local v3    # "u":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v8    # "aspect":F
    .end local v9    # "b":Landroid/graphics/Bitmap;
    .end local v11    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v15    # "h":I
    .end local v16    # "img":Ljava/io/File;
    .end local v17    # "imgString":Ljava/lang/String;
    .end local v20    # "photoH":I
    .end local v21    # "photoW":I
    .end local v24    # "scaleFactor":I
    .end local v25    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v26    # "w":I
    :cond_8
    :goto_5
    sget-object v2, Lcom/androidnative/features/CameraAPI;->CAMERA_SERVICE_LISTNER_NAME:Ljava/lang/String;

    .line 344
    const-string v5, "OnImagePickedEvent"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 343
    invoke-static {v2, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    .restart local v11    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v16    # "img":Ljava/io/File;
    .restart local v20    # "photoH":I
    .restart local v21    # "photoW":I
    .restart local v24    # "scaleFactor":I
    :cond_9
    sget v2, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    div-int v24, v20, v2

    goto/16 :goto_1

    .line 252
    .restart local v9    # "b":Landroid/graphics/Bitmap;
    .restart local v15    # "h":I
    .restart local v26    # "w":I
    :cond_a
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 253
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 252
    div-float v8, v2, v5

    .line 254
    .restart local v8    # "aspect":F
    sget v2, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    int-to-float v2, v2

    div-float v19, v2, v8

    .line 255
    .local v19, "new_width":F
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v26, v0

    goto/16 :goto_2

    .line 290
    .end local v19    # "new_width":F
    .restart local v3    # "u":Landroid/net/Uri;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v10    # "bFound":Z
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v17    # "imgString":Ljava/lang/String;
    .restart local v25    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 292
    .local v23, "sGallery":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 291
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 292
    if-eqz v5, :cond_6

    .line 293
    const/4 v10, 0x1

    .line 294
    goto/16 :goto_3

    .line 309
    .end local v23    # "sGallery":Ljava/lang/String;
    :cond_c
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    .line 317
    .end local v3    # "u":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v8    # "aspect":F
    .end local v9    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "bFound":Z
    .end local v11    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v15    # "h":I
    .end local v16    # "img":Ljava/io/File;
    .end local v17    # "imgString":Ljava/lang/String;
    .end local v20    # "photoH":I
    .end local v21    # "photoW":I
    .end local v24    # "scaleFactor":I
    .end local v25    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v26    # "w":I
    :cond_d
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v2, "|"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    if-eqz p3, :cond_e

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 322
    .local v14, "extras":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 324
    .restart local v9    # "b":Landroid/graphics/Bitmap;
    const-string v2, "AndroidNative"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "w: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " h: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 325
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 324
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/androidnative/features/CameraAPI;->getBytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/androidnative/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v17

    .line 328
    .restart local v17    # "imgString":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 330
    .end local v9    # "b":Landroid/graphics/Bitmap;
    .end local v14    # "extras":Landroid/os/Bundle;
    .end local v17    # "imgString":Ljava/lang/String;
    :cond_e
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 336
    :cond_f
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v2, "AndroidNative"

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RESULT_IMAGE_CAPTURE captured FAIL. BUT ActivityResult code = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 339
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 338
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public onError(Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 458
    const-string v1, "AndroidNative"

    const-string v2, "chooser onError: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    sget-object v1, Lcom/androidnative/features/CameraAPI;->CAMERA_SERVICE_LISTNER_NAME:Ljava/lang/String;

    .line 466
    const-string v2, "OnImagePickedEvent"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public onImageChosen(Lcom/kbeanie/imagechooser/api/ChosenImage;)V
    .locals 21
    .param p1, "image"    # Lcom/kbeanie/imagechooser/api/ChosenImage;

    .prologue
    .line 473
    const-string v18, "AndroidNative"

    const-string v19, "onImageChosen: "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v14, 0x0

    .line 476
    .local v14, "result":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    .end local v14    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .restart local v14    # "result":Ljava/lang/StringBuilder;
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    const-string v18, "|"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual/range {p1 .. p1}, Lcom/kbeanie/imagechooser/api/ChosenImage;->getFilePathOriginal()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v18, "|"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v9, ""

    .line 483
    .local v9, "imgString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 485
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 486
    .local v4, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/kbeanie/imagechooser/api/ChosenImage;->getFilePathOriginal()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 490
    iget v13, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 491
    .local v13, "photoW":I
    iget v12, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 493
    .local v12, "photoH":I
    const/4 v15, 0x1

    .line 494
    .local v15, "scaleFactor":I
    if-le v13, v12, :cond_2

    .line 495
    sget v18, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    div-int v15, v13, v18

    .line 500
    :goto_0
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 501
    iput v15, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 503
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/kbeanie/imagechooser/api/ChosenImage;->getFilePathOriginal()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 507
    .local v3, "b":Landroid/graphics/Bitmap;
    sget v17, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    .line 508
    .local v17, "w":I
    sget v7, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    .line 509
    .local v7, "h":I
    if-le v13, v12, :cond_3

    .line 510
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v2, v18, v19

    .line 511
    .local v2, "aspect":F
    sget v18, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v18, v2

    .line 512
    .local v10, "new_height":F
    float-to-int v7, v10

    .line 519
    .end local v10    # "new_height":F
    :goto_1
    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v7, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 521
    .local v16, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/androidnative/features/CameraAPI;->getBytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/androidnative/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v9

    .line 522
    const-string v18, "AndroidNative"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "w: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " h: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 523
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 522
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v2    # "aspect":F
    .end local v3    # "b":Landroid/graphics/Bitmap;
    .end local v4    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "h":I
    .end local v12    # "photoH":I
    .end local v13    # "photoW":I
    .end local v15    # "scaleFactor":I
    .end local v16    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "w":I
    :cond_0
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    new-instance v6, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 529
    const-string v19, "/bimagechooser"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 528
    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .local v6, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 531
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 532
    .local v5, "children":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v8, v0, :cond_4

    .line 538
    .end local v5    # "children":[Ljava/lang/String;
    .end local v8    # "i":I
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 540
    sget-object v18, Lcom/androidnative/features/CameraAPI;->CAMERA_SERVICE_LISTNER_NAME:Ljava/lang/String;

    .line 541
    const-string v19, "OnImagePickedEvent"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 540
    invoke-static/range {v18 .. v20}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void

    .line 497
    .end local v6    # "dir":Ljava/io/File;
    .restart local v4    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "photoH":I
    .restart local v13    # "photoW":I
    .restart local v15    # "scaleFactor":I
    :cond_2
    sget v18, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    div-int v15, v12, v18

    goto/16 :goto_0

    .line 514
    .restart local v3    # "b":Landroid/graphics/Bitmap;
    .restart local v7    # "h":I
    .restart local v17    # "w":I
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v2, v18, v19

    .line 515
    .restart local v2    # "aspect":F
    sget v18, Lcom/androidnative/features/CameraAPI;->MaxImageAllowedSize:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v11, v18, v2

    .line 516
    .local v11, "new_width":F
    float-to-int v0, v11

    move/from16 v17, v0

    goto/16 :goto_1

    .line 533
    .end local v2    # "aspect":F
    .end local v3    # "b":Landroid/graphics/Bitmap;
    .end local v4    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "h":I
    .end local v11    # "new_width":F
    .end local v12    # "photoH":I
    .end local v13    # "photoW":I
    .end local v15    # "scaleFactor":I
    .end local v17    # "w":I
    .restart local v5    # "children":[Ljava/lang/String;
    .restart local v6    # "dir":Ljava/io/File;
    .restart local v8    # "i":I
    :cond_4
    const-string v18, "AndroidNative"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "bimagechooser file deleted "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    aget-object v20, v5, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 533
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v18, Ljava/io/File;

    aget-object v19, v5, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 532
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method
