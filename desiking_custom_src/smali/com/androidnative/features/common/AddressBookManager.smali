.class public Lcom/androidnative/features/common/AddressBookManager;
.super Ljava/lang/Object;
.source "AddressBookManager.java"


# static fields
.field public static final SEPARATOR_1:Ljava/lang/String; = "&#&"

.field public static final SEPARATOR_2:Ljava/lang/String; = "#&#"

.field private static _instance:Lcom/androidnative/features/common/AddressBookManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/androidnative/features/common/AddressBookManager;->_instance:Lcom/androidnative/features/common/AddressBookManager;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetInstance()Lcom/androidnative/features/common/AddressBookManager;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/androidnative/features/common/AddressBookManager;->_instance:Lcom/androidnative/features/common/AddressBookManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/androidnative/features/common/AddressBookManager;

    invoke-direct {v0}, Lcom/androidnative/features/common/AddressBookManager;-><init>()V

    sput-object v0, Lcom/androidnative/features/common/AddressBookManager;->_instance:Lcom/androidnative/features/common/AddressBookManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/androidnative/features/common/AddressBookManager;->_instance:Lcom/androidnative/features/common/AddressBookManager;

    return-object v0
.end method


# virtual methods
.method public load()V
    .locals 64
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetApplicationContex()Landroid/content/Context;

    move-result-object v35

    .line 38
    .local v35, "context":Landroid/content/Context;
    const/16 v3, 0x8

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v62, v0

    const/4 v3, 0x0

    const-string v4, "Name "

    aput-object v4, v62, v3

    const/4 v3, 0x1

    const-string v4, "Phone "

    aput-object v4, v62, v3

    const/4 v3, 0x2

    const-string v4, "Email "

    aput-object v4, v62, v3

    const/4 v3, 0x3

    const-string v4, "Note "

    aput-object v4, v62, v3

    const/4 v3, 0x4

    const-string v4, "Chat "

    aput-object v4, v62, v3

    const/4 v3, 0x5

    const-string v4, "Organization "

    aput-object v4, v62, v3

    const/4 v3, 0x6

    const-string v4, "Photo "

    aput-object v4, v62, v3

    const/4 v3, 0x7

    const-string v4, "Address "

    aput-object v4, v62, v3

    .line 39
    .local v62, "titles":[Ljava/lang/String;
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v48, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v58, "result":Ljava/lang/StringBuilder;
    const-string v7, "display_name COLLATE LOCALIZED ASC"

    .line 42
    .local v7, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 43
    .local v2, "content_resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    .line 44
    .local v37, "cur":Landroid/database/Cursor;
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 45
    :goto_0
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    :cond_0
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 175
    const-string v3, "AddressBookController"

    const-string v4, "OnContactsLoaded"

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void

    .line 46
    :cond_1
    const-string v3, "_id"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 47
    .local v44, "id":Ljava/lang/String;
    const-string v3, "display_name"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 49
    .local v47, "name":Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v62, v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v3, "has_phone_number"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_20

    .line 52
    const-string v53, ""

    .line 53
    .local v53, "phone":Ljava/lang/String;
    sget-object v9, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const-string v11, "contact_id = ? "

    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v44, v12, v3

    const/4 v13, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 55
    .local v38, "cursor_phone":Landroid/database/Cursor;
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    const-string v3, "data1"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 58
    :cond_2
    const-string v3, "&#&"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/4 v3, 0x1

    aget-object v3, v62, v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    if-eqz v53, :cond_3

    const-string v3, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v53, "-"

    .end local v53    # "phone":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v58

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 64
    const-string v40, ""

    .local v40, "email":Ljava/lang/String;
    const-string v42, ""

    .line 65
    .local v42, "emailType":Ljava/lang/String;
    sget-object v9, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const-string v11, "contact_id = ?"

    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v44, v12, v3

    const/4 v13, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v41

    .line 67
    .local v41, "emailCur":Landroid/database/Cursor;
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 68
    const-string v3, "data1"

    move-object/from16 v0, v41

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v41

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 69
    const-string v3, "data2"

    move-object/from16 v0, v41

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v41

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 71
    :cond_5
    const-string v3, "&#&"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const/4 v3, 0x2

    aget-object v3, v62, v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    if-eqz v40, :cond_6

    const-string v3, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_6
    const-string v3, "-"

    .end local v42    # "emailType":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->close()V

    .line 77
    const-string v49, ""

    .line 78
    .local v49, "note":Ljava/lang/String;
    const-string v11, "contact_id = ? AND mimetype = ?"

    .line 79
    .local v11, "noteWhere":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v44, v12, v3

    const/4 v3, 0x1

    const-string v4, "vnd.android.cursor.item/note"

    aput-object v4, v12, v3

    .line 80
    .local v12, "noteWhereParams":[Ljava/lang/String;
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v50

    .line 82
    .local v50, "noteCur":Landroid/database/Cursor;
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 83
    const-string v3, "data1"

    move-object/from16 v0, v50

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v50

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 85
    :cond_7
    const-string v3, "&#&"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const/4 v3, 0x3

    aget-object v3, v62, v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const/4 v3, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, ""

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const-string v49, "-"

    .end local v49    # "note":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v58

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface/range {v50 .. v50}, Landroid/database/Cursor;->close()V

    .line 91
    const-string v45, ""

    .local v45, "imName":Ljava/lang/String;
    const-string v46, ""

    .line 92
    .local v46, "imType":Ljava/lang/String;
    const-string v16, "contact_id = ? AND mimetype = ?"

    .line 93
    .local v16, "imWhere":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    aput-object v44, v17, v3

    const/4 v3, 0x1

    const-string v4, "vnd.android.cursor.item/im"

    aput-object v4, v17, v3

    .line 94
    .local v17, "imWhereParams":[Ljava/lang/String;
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object v13, v2

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 96
    .local v32, "chatCur":Landroid/database/Cursor;
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 97
    const-string v3, "data1"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 98
    const-string v3, "data2"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 100
    :cond_a
    const-string v3, "&#&"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const/4 v3, 0x4

    aget-object v3, v62, v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    if-eqz v45, :cond_b

    const-string v3, ""

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_b
    const-string v3, "-"

    .end local v46    # "imType":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 106
    const-string v52, ""

    .local v52, "orgName":Ljava/lang/String;
    const-string v61, ""

    .line 107
    .local v61, "title":Ljava/lang/String;
    const-string v21, "contact_id = ? AND mimetype = ?"

    .line 108
    .local v21, "orgWhere":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v3, 0x0

    aput-object v44, v22, v3

    const/4 v3, 0x1

    const-string v4, "vnd.android.cursor.item/organization"

    aput-object v4, v22, v3

    .line 109
    .local v22, "orgWhereParams":[Ljava/lang/String;
    sget-object v19, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v51

    .line 111
    .local v51, "orgCur":Landroid/database/Cursor;
    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 112
    const-string v3, "data1"

    move-object/from16 v0, v51

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v51

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 113
    const-string v3, "data4"

    move-object/from16 v0, v51

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v51

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 115
    :cond_c
    const-string v3, "&#&"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/4 v3, 0x5

    aget-object v3, v62, v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    if-eqz v52, :cond_d

    const-string v3, ""

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_d
    const-string v3, "-"

    .end local v61    # "title":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface/range {v51 .. v51}, Landroid/database/Cursor;->close()V

    .line 121
    const-string v55, ""

    .line 122
    .local v55, "photo_data":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v34

    .line 123
    .local v34, "contactUri":Landroid/net/Uri;
    const-string v3, "photo"

    move-object/from16 v0, v34

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 124
    .local v24, "photoUri":Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v25, v3

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v28}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v54

    .line 125
    .local v54, "photo_cursor":Landroid/database/Cursor;
    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 126
    const/4 v3, 0x0

    move-object/from16 v0, v54

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v39

    .line 127
    .local v39, "data":[B
    const/16 v43, 0x0

    .local v43, "i":I
    :goto_4
    move-object/from16 v0, v39

    array-length v3, v0

    move/from16 v0, v43

    if-lt v0, v3, :cond_2a

    .line 134
    .end local v39    # "data":[B
    .end local v43    # "i":I
    :cond_e
    const-string v3, "&#&"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/4 v3, 0x6

    aget-object v3, v62, v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    if-eqz v55, :cond_f

    const-string v3, ""

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    const-string v55, "-"

    .end local v55    # "photo_data":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v58

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->close()V

    .line 140
    const-string v56, ""

    .local v56, "poBox":Ljava/lang/String;
    const-string v60, ""

    .local v60, "street":Ljava/lang/String;
    const-string v33, ""

    .local v33, "city":Ljava/lang/String;
    const-string v59, ""

    .local v59, "state":Ljava/lang/String;
    const-string v57, ""

    .local v57, "postalCode":Ljava/lang/String;
    const-string v36, ""

    .local v36, "country":Ljava/lang/String;
    const-string v63, ""

    .line 141
    .local v63, "type":Ljava/lang/String;
    const-string v28, "contact_id = ? AND mimetype = ?"

    .line 142
    .local v28, "addrWhere":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/4 v3, 0x0

    aput-object v44, v29, v3

    const/4 v3, 0x1

    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    aput-object v4, v29, v3

    .line 143
    .local v29, "addrWhereParams":[Ljava/lang/String;
    sget-object v26, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/16 v27, 0x0

    const/16 v30, 0x0

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 145
    .local v31, "addressCur":Landroid/database/Cursor;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 146
    const-string v3, "data5"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 147
    const-string v3, "data4"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v60

    .line 148
    const-string v3, "data7"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 149
    const-string v3, "data8"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 150
    const-string v3, "data9"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 151
    const-string v3, "data10"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 152
    const-string v3, "data2"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v63

    .line 154
    :cond_11
    const-string v3, "&#&"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const/4 v3, 0x7

    aget-object v3, v62, v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    if-eqz v56, :cond_12

    const-string v3, ""

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    const-string v56, "-"

    .end local v56    # "poBox":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#&#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    if-eqz v60, :cond_14

    const-string v3, ""

    move-object/from16 v0, v60

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    const-string v60, "-"

    .end local v60    # "street":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, v58

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#&#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    if-eqz v33, :cond_16

    const-string v3, ""

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    const-string v33, "-"

    .end local v33    # "city":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, v58

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#&#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    if-eqz v59, :cond_18

    const-string v3, ""

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    const-string v59, "-"

    .end local v59    # "state":Ljava/lang/String;
    :cond_19
    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#&#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    if-eqz v57, :cond_1a

    const-string v3, ""

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1a
    const-string v57, "-"

    .end local v57    # "postalCode":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#&#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    if-eqz v36, :cond_1c

    const-string v3, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_1c
    const-string v36, "-"

    .end local v36    # "country":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, v58

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#&#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    if-eqz v63, :cond_1e

    const-string v3, ""

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1e
    const-string v63, "-"

    .end local v63    # "type":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, v58

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#&#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 167
    .end local v11    # "noteWhere":Ljava/lang/String;
    .end local v12    # "noteWhereParams":[Ljava/lang/String;
    .end local v16    # "imWhere":Ljava/lang/String;
    .end local v17    # "imWhereParams":[Ljava/lang/String;
    .end local v21    # "orgWhere":Ljava/lang/String;
    .end local v22    # "orgWhereParams":[Ljava/lang/String;
    .end local v24    # "photoUri":Landroid/net/Uri;
    .end local v28    # "addrWhere":Ljava/lang/String;
    .end local v29    # "addrWhereParams":[Ljava/lang/String;
    .end local v31    # "addressCur":Landroid/database/Cursor;
    .end local v32    # "chatCur":Landroid/database/Cursor;
    .end local v34    # "contactUri":Landroid/net/Uri;
    .end local v38    # "cursor_phone":Landroid/database/Cursor;
    .end local v40    # "email":Ljava/lang/String;
    .end local v41    # "emailCur":Landroid/database/Cursor;
    .end local v45    # "imName":Ljava/lang/String;
    .end local v50    # "noteCur":Landroid/database/Cursor;
    .end local v51    # "orgCur":Landroid/database/Cursor;
    .end local v52    # "orgName":Ljava/lang/String;
    .end local v54    # "photo_cursor":Landroid/database/Cursor;
    :cond_20
    const-string v3, "|"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 73
    .restart local v38    # "cursor_phone":Landroid/database/Cursor;
    .restart local v40    # "email":Ljava/lang/String;
    .restart local v41    # "emailCur":Landroid/database/Cursor;
    .restart local v42    # "emailType":Ljava/lang/String;
    :cond_21
    const-string v3, "#&#"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v42, :cond_22

    const-string v4, ""

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_22
    const-string v42, "-"

    .end local v42    # "emailType":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 102
    .restart local v11    # "noteWhere":Ljava/lang/String;
    .restart local v12    # "noteWhereParams":[Ljava/lang/String;
    .restart local v16    # "imWhere":Ljava/lang/String;
    .restart local v17    # "imWhereParams":[Ljava/lang/String;
    .restart local v32    # "chatCur":Landroid/database/Cursor;
    .restart local v45    # "imName":Ljava/lang/String;
    .restart local v46    # "imType":Ljava/lang/String;
    .restart local v50    # "noteCur":Landroid/database/Cursor;
    :cond_24
    const-string v3, "#&#"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v46, :cond_25

    const-string v4, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_25
    const-string v46, "-"

    .end local v46    # "imType":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 117
    .restart local v21    # "orgWhere":Ljava/lang/String;
    .restart local v22    # "orgWhereParams":[Ljava/lang/String;
    .restart local v51    # "orgCur":Landroid/database/Cursor;
    .restart local v52    # "orgName":Ljava/lang/String;
    .restart local v61    # "title":Ljava/lang/String;
    :cond_27
    const-string v3, "#&#"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v61, :cond_28

    const-string v4, ""

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_28
    const-string v61, "-"

    .end local v61    # "title":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 128
    .restart local v24    # "photoUri":Landroid/net/Uri;
    .restart local v34    # "contactUri":Landroid/net/Uri;
    .restart local v39    # "data":[B
    .restart local v43    # "i":I
    .restart local v54    # "photo_cursor":Landroid/database/Cursor;
    .restart local v55    # "photo_data":Ljava/lang/String;
    :cond_2a
    if-eqz v43, :cond_2b

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v55 .. v55}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    .line 131
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v55 .. v55}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, v39, v43

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    .line 127
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_4
.end method
