.class public final Ljp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/ISmsDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
        "<",
        "Lmk;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lhs;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Lki;

.field private h:Lho;

.field private i:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sms_draft_prefs"

    sput-object v0, Ljp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljp;->f:Landroid/content/Context;

    iput-object p1, p0, Ljp;->c:Ljava/lang/String;

    iput-object p2, p0, Ljp;->d:Ljava/lang/String;

    iput-object p3, p0, Ljp;->e:Ljava/lang/String;

    invoke-static {}, Lhs;->a()Lhs;

    move-result-object v0

    iput-object v0, p0, Ljp;->b:Lhs;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    iput-object v0, p0, Ljp;->g:Lki;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Ljp;->h:Lho;

    iget-object v0, p0, Ljp;->f:Landroid/content/Context;

    sget-object v1, Ljp;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ljp;->i:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Ljp;Lmk;I)J
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljp;->a(Lmk;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lmk;IZ)J
    .locals 12

    const-wide/16 v4, -0x1

    const-wide/16 v10, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertMMSPduAndParts smsLogId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1, p2}, Lgu;->a(Lmk;I)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Ljp;->b:Lhs;

    iget-object v2, p0, Ljp;->d:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    if-eqz p3, :cond_0

    cmp-long v2, v0, v10

    if-ltz v2, :cond_0

    iget-object v2, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    long-to-int v3, v0

    iput v3, v2, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->id:I

    :cond_0
    :goto_0
    cmp-long v2, v0, v10

    if-gez v2, :cond_3

    :cond_1
    :goto_1
    return-wide v0

    :cond_2
    iget-object v2, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    long-to-int v3, v0

    iput v3, v2, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->id:I

    goto :goto_0

    :cond_3
    long-to-int v6, v0

    :try_start_0
    invoke-static {p1, p2}, Lgu;->b(Lmk;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iget-object v1, p0, Ljp;->b:Lhs;

    iget-object v2, p0, Ljp;->e:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    if-eqz p3, :cond_4

    cmp-long v1, v2, v10

    if-ltz v1, :cond_4

    new-instance v8, Lly;

    iget-object v1, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/aresengine/MmsPart;

    invoke-direct {v8, v1}, Lly;-><init>(Lcom/tencent/tmsecure/module/aresengine/MmsPart;)V

    long-to-int v1, v2

    iput v1, v8, Lly;->id:I

    const-string v1, "seq"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v8, Lly;->a:I

    iget-object v0, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    cmp-long v0, v2, v10

    if-gez v0, :cond_6

    move-wide v0, v2

    :cond_5
    :goto_3
    cmp-long v2, v0, v10

    if-gez v2, :cond_1

    invoke-direct {p0, p2}, Ljp;->c(I)Z

    iget-object v2, p0, Ljp;->b:Lhs;

    iget-object v3, p0, Ljp;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-wide v0, v4

    goto :goto_3

    :cond_6
    move-wide v0, v2

    goto :goto_2

    :cond_7
    move-wide v0, v4

    goto/16 :goto_0
.end method

.method static synthetic a(Ljp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ljp;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;"
        }
    .end annotation

    const-string v3, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "thread_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "address"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "person"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "date"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "protocol"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "read"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "subject"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "body"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "service_center"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "read_extend"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v16, "displayName"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v18

    if-nez v18, :cond_2

    new-instance v18, Lmk;

    invoke-direct/range {v18 .. v18}, Lmk;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lmk;->id:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lmk;->e:I

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lmk;->a(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lmk;->b:I

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lmk;->date:J

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lmk;->protocolType:I

    shr-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lmk;->j:I

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lmk;->read:I

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lmk;->h:I

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lmk;->type:I

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lmk;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lmk;->body:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lmk;->d:Ljava/lang/String;

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_1

    move-object/from16 v0, v18

    iget v0, v0, Lmk;->read:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lmk;->a:I

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lmk;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v0, v0, Lmk;->protocolType:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "smsLog id: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget v0, v0, Lmk;->id:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is MMS"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljp;->c(Lmk;)V

    :cond_0
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lmk;->a:I

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-object v17
.end method

.method static synthetic b(Ljp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Ljp;)Lhs;
    .locals 1

    iget-object v0, p0, Ljp;->b:Lhs;

    return-object v0
.end method

.method private c(Lmk;)V
    .locals 14

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/MmsData;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljp;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE sl_id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lmk;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljp;->b:Lhs;

    invoke-virtual {v2, v1}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "m_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x82

    if-ne v2, v3, :cond_2

    new-instance v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;-><init>()V

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->messageType:I

    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->id:I

    const-string v2, "pn_cs"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->phonenumCharset:I

    const-string v2, "sub"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    const-string v2, "sub_cs"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subjectCharset:I

    const-string v2, "ct_l"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    const-string v2, "m_cls"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->messageclass:[B

    const-string v2, "tr_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->transactionId:[B

    const-string v2, "v"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->mmsVersion:I

    const-string v2, "exp"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->expiry:J

    const-string v2, "m_size"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->messageSize:J

    const-string v2, "ct_cls"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentClass:I

    const-string v2, "d_rpt"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->deliveryReport:I

    iput-object v3, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    const-string v2, "f_c"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lmk;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljp;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE sl_id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lmk;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljp;->b:Lhs;

    invoke-virtual {v2, v1}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "seq"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "ct"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "name"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "chset"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "cd"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "fn"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "cid"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "cl"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_7

    new-instance v11, Lly;

    invoke-direct {v11}, Lly;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v11, Lly;->id:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v11, Lly;->a:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    iput-object v12, v11, Lly;->contentType:[B

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    iput-object v12, v11, Lly;->name:[B

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v11, Lly;->charset:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    iput-object v12, v11, Lly;->contentDispositon:[B

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    iput-object v12, v11, Lly;->fileName:[B

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    iput-object v12, v11, Lly;->contentId:[B

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    iput-object v12, v11, Lly;->contentLocation:[B

    const-string v12, "data"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    iput-object v12, v11, Lly;->data:[B

    const-string v12, "dp"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lly;->dataPath:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "part.dataPath: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v11, Lly;->dataPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v12, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_2
    const/16 v3, 0x80

    if-eq v2, v3, :cond_3

    const/16 v3, 0x84

    if-ne v2, v3, :cond_0

    :cond_3
    new-instance v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;-><init>()V

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageType:I

    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->id:I

    const-string v2, "pn_cs"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->phonenumCharset:I

    const-string v2, "sub"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    const-string v2, "sub_cs"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subjectCharset:I

    const-string v2, "m_cls"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    const-string v2, "tr_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    const-string v2, "v"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->mmsVersion:I

    const-string v2, "m_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageId:[B

    const-string v2, "ct_t"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->contentType:[B

    const-string v2, "pri"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->priority:I

    const-string v2, "rr"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->readReport:I

    const-string v2, "rpt_a"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->reportAllowed:I

    const-string v2, "retr_st"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->retrieveStatus:I

    const-string v2, "retr_txt"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->retrieveText:Ljava/lang/String;

    const-string v2, "retr_txt_cs"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->retrieveTextCharset:I

    const-string v2, "resp_st"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->responseStatus:I

    const-string v2, "resp_txt"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->responseText:Ljava/lang/String;

    const-string v2, "exp"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->expiry:J

    const-string v2, "m_size"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageSize:J

    const-string v2, "d_tm"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->deliverytime:I

    const-string v2, "d_rpt"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->deliveryReport:I

    const-string v2, "to_addr"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lgu;->a(Ljava/lang/String;)[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->toAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    :cond_4
    const-string v2, "cc_addr"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Lgu;->a(Ljava/lang/String;)[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    :cond_5
    const-string v2, "bcc_addr"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Lgu;->a(Ljava/lang/String;)[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    :cond_6
    iput-object v3, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    const-string v2, "f_c"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lmk;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    iput-object v0, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    return-void
.end method

.method private c(I)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE sl_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp;->b:Lhs;

    invoke-virtual {v1, v0}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dp"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete part file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v0, p0, Ljp;->b:Lhs;

    iget-object v1, p0, Ljp;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sl_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final a(JJ)I
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT count(*) FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE date>="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND date<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljp;->b:Lhs;

    invoke-virtual {v2, v1}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Ljp;->b:Lhs;

    invoke-virtual {v1}, Lhs;->b()V

    return v0
.end method

.method public final a(Lmk;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)J
    .locals 9

    const-wide/16 v0, -0x1

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    iput v3, p1, Lmk;->j:I

    iget v2, p2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-static {p1, v3}, Lgu;->a(Lmk;Z)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Ljp;->b:Lhs;

    iget-object v2, p0, Ljp;->c:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v2, v0

    iput v2, p1, Lmk;->id:I

    cmp-long v2, v0, v7

    if-ltz v2, :cond_1

    iget v2, p1, Lmk;->protocolType:I

    if-ne v2, v6, :cond_1

    iget v0, p1, Lmk;->id:I

    invoke-direct {p0, p1, v0, v6}, Ljp;->a(Lmk;IZ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-gez v2, :cond_1

    iget-object v2, p0, Ljp;->b:Lhs;

    iget-object v3, p0, Ljp;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lmk;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Ljp;->b:Lhs;

    invoke-virtual {v2}, Lhs;->b()V

    cmp-long v2, v0, v7

    if-ltz v2, :cond_4

    const-string v2, "securesmslog"

    iget-object v3, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p1, Lmk;->protocolType:I

    if-ne v2, v6, :cond_3

    iget-object v2, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v2, :cond_3

    sget-object v2, Lui;->g:Lui;

    if-nez v2, :cond_2

    new-instance v2, Lui;

    invoke-direct {v2}, Lui;-><init>()V

    sput-object v2, Lui;->g:Lui;

    :cond_2
    sget-object v2, Lui;->g:Lui;

    new-instance v3, Lml;

    iget v4, p1, Lmk;->id:I

    invoke-direct {v3, p1, v4}, Lml;-><init>(Lmk;I)V

    invoke-virtual {v2, v3}, Lui;->a(Lml;)V

    :cond_3
    const-string v2, "securesmslog"

    iget-object v3, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljp;->h:Lho;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lho;->c(J)V

    :cond_4
    :sswitch_0
    return-wide v0

    :sswitch_1
    iput v6, p1, Lmk;->j:I

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    aget-object v0, v0, v3

    instance-of v0, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    iget v0, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const/4 v0, 0x2

    iput v0, p1, Lmk;->j:I

    goto/16 :goto_0

    :pswitch_2
    const/4 v0, 0x3

    iput v0, p1, Lmk;->j:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x40 -> :sswitch_2
        0x100 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lmk;Z)J
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgu;->a(Lmk;Z)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Ljp;->b:Lhs;

    iget-object v2, p0, Ljp;->c:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    if-eqz p2, :cond_0

    long-to-int v2, v0

    iput v2, p1, Lmk;->id:I

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "log.protocolType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lmk;->protocolType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    cmp-long v2, v0, v7

    if-ltz v2, :cond_1

    iget v2, p1, Lmk;->protocolType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    long-to-int v2, v0

    invoke-direct {p0, p1, v2, p2}, Ljp;->a(Lmk;IZ)J

    move-result-wide v0

    cmp-long v3, v0, v7

    if-gez v3, :cond_1

    iget-object v3, p0, Ljp;->b:Lhs;

    iget-object v4, p0, Ljp;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Ljp;->b:Lhs;

    invoke-virtual {v2}, Lhs;->b()V

    cmp-long v2, v0, v7

    if-ltz v2, :cond_2

    const-string v2, "securesmslog"

    iget-object v3, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljp;->h:Lho;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lho;->c(J)V

    :cond_2
    return-wide v0
.end method

.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ORDER BY date DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljp;->b:Lhs;

    invoke-virtual {v2, v1}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Ljp;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Ljp;->b:Lhs;

    invoke-virtual {v1}, Lhs;->b()V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lfu;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp;->b:Lhs;

    invoke-virtual {v1, v0}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Ljp;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Ljp;->b:Lhs;

    invoke-virtual {v1}, Lhs;->b()V

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;"
        }
    .end annotation

    const-wide/32 v7, 0xf731400

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT * FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lfu;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " AND date>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v5, v1, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND date<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-long/2addr v1, v7

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " AND body LIKE \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Ljp;->b:Lhs;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Ljp;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v1, p0, Ljp;->b:Lhs;

    invoke-virtual {v1}, Lhs;->b()V

    :cond_3
    return-object v0
.end method

.method public final a(I)Lmk;
    .locals 16

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Ljp;->b:Lhs;

    invoke-virtual {v2, v1}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v1, "thread_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v1, "address"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v1, "person"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v1, "date"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v1, "protocol"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v1, "read"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v1, "status"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v1, "type"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v1, "subject"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v1, "body"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v1, "service_center"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v1, "read_extend"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    new-instance v1, Lmk;

    invoke-direct {v1}, Lmk;-><init>()V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lmk;->id:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lmk;->e:I

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmk;->a(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lmk;->b:I

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lmk;->date:J

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    and-int/lit16 v4, v3, 0xff

    iput v4, v1, Lmk;->protocolType:I

    shr-int/lit8 v3, v3, 0x8

    iput v3, v1, Lmk;->j:I

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lmk;->read:I

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lmk;->h:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lmk;->type:I

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmk;->c:Ljava/lang/String;

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmk;->body:Ljava/lang/String;

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmk;->d:Ljava/lang/String;

    const/4 v3, -0x1

    if-ne v15, v3, :cond_2

    iget v3, v1, Lmk;->read:I

    iput v3, v1, Lmk;->a:I

    :goto_0
    iget v3, v1, Lmk;->protocolType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Ljp;->c(Lmk;)V

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp;->b:Lhs;

    invoke-virtual {v2}, Lhs;->b()V

    return-object v1

    :cond_2
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lmk;->a:I

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljp;->b:Lhs;

    new-instance v1, Ljq;

    invoke-direct {v1, p0, p1}, Ljq;-><init>(Ljp;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhs;->a(Ldv;)Z

    const-string v0, "securesmslog"

    iget-object v1, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp;->h:Lho;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->c(J)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lmk;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Ljp;->g:Lki;

    iget v3, p1, Lmk;->e:I

    invoke-virtual {v0, v3}, Lki;->b(I)Lmk;

    move-result-object v3

    iget v0, p1, Lmk;->protocolType:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Ljp;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b04eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lmk;->setBody(Ljava/lang/String;)V

    :cond_1
    iget v0, p1, Lmk;->a:I

    if-nez v0, :cond_3

    iput v2, p1, Lmk;->read:I

    :goto_0
    iget-object v0, p0, Ljp;->g:Lki;

    invoke-virtual {v0, p1}, Lki;->insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ljp;->b(Lmk;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    iput v1, p1, Lmk;->read:I

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    iget-wide v4, v3, Lmk;->date:J

    iget-wide v6, p1, Lmk;->date:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    iget-object v0, p0, Ljp;->g:Lki;

    invoke-virtual {v0, v3}, Lki;->remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    iget-object v0, p0, Ljp;->g:Lki;

    invoke-virtual {v0, v3}, Lki;->insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Landroid/net/Uri;

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public final b()I
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT count(*) FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljp;->b:Lhs;

    invoke-virtual {v2, v1}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Ljp;->b:Lhs;

    invoke-virtual {v1}, Lhs;->b()V

    return v0
.end method

.method public final b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set read_extend=1 where id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp;->b:Lhs;

    invoke-virtual {v1, v0}, Lhs;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ljp;->b:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp;->b(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Ljp;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    move-object v6, v0

    :goto_0
    if-eqz v6, :cond_3

    iget-object v0, p0, Ljp;->g:Lki;

    iget v1, v6, Lmk;->e:I

    invoke-virtual {v0, v1}, Lki;->b(I)Lmk;

    move-result-object v0

    move-object v2, v0

    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_2
    if-ltz v5, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v1, v0, Lmk;->protocolType:I

    if-ne v1, v3, :cond_0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Ljp;->f:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b04eb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, v0, Lmk;->body:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmk;

    iget v1, v1, Lmk;->a:I

    iput v1, v0, Lmk;->read:I

    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_2

    :cond_2
    move-object v6, v1

    goto :goto_0

    :cond_3
    move-object v2, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Ljp;->g:Lki;

    invoke-virtual {v0, p1}, Lki;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Ljp;->c(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v1, v4

    :goto_3
    if-eqz v1, :cond_8

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    invoke-virtual {p0, v0}, Ljp;->a(Lmk;)Z

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    iget-wide v0, v2, Lmk;->date:J

    iget-wide v4, v6, Lmk;->date:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_7

    iget-object v0, p0, Ljp;->g:Lki;

    invoke-virtual {v0, v2}, Lki;->remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    iget-object v0, p0, Ljp;->g:Lki;

    invoke-virtual {v0, v2}, Lki;->insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Landroid/net/Uri;

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    return v1
.end method

.method public final b(Lmk;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    iget v1, p1, Lmk;->id:I

    iget v2, p1, Lmk;->protocolType:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteByID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-ne v2, v0, :cond_0

    invoke-direct {p0, v1}, Ljp;->c(I)Z

    iget-object v2, p0, Ljp;->b:Lhs;

    iget-object v3, p0, Ljp;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sl_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Ljp;->b:Lhs;

    iget-object v3, p0, Ljp;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v6}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Ljp;->b:Lhs;

    invoke-virtual {v2}, Lhs;->b()V

    if-lez v1, :cond_1

    const-string v2, "securesmslog"

    iget-object v3, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljp;->h:Lho;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lho;->c(J)V

    :cond_1
    if-lez v1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljp;->i:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Ljp;->b:Lhs;

    iget-object v1, p0, Ljp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhs;->c(Ljava/lang/String;)I

    iget-object v0, p0, Ljp;->b:Lhs;

    iget-object v1, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhs;->c(Ljava/lang/String;)I

    iget-object v0, p0, Ljp;->b:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    const-string v0, "securesmslog"

    iget-object v1, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp;->h:Lho;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->c(J)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, " IN ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lmk;->id:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "sl_id"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "SELECT * FROM "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljp;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " WHERE "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Ljp;->b:Lhs;

    invoke-virtual {v4, v0}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dp"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Ljp;->b:Lhs;

    iget-object v4, p0, Ljp;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v3, v6}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "sl_id"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ljp;->b:Lhs;

    iget-object v4, p0, Ljp;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v6}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "id"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljp;->b:Lhs;

    iget-object v3, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v6}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_3
    iget-object v1, p0, Ljp;->b:Lhs;

    invoke-virtual {v1}, Lhs;->b()V

    if-eqz v0, :cond_4

    const-string v1, "securesmslog"

    iget-object v2, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljp;->h:Lho;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lho;->c(J)V

    :cond_4
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4
.end method

.method public final d()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set read_extend=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp;->b:Lhs;

    invoke-virtual {v1, v0}, Lhs;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ljp;->b:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Ljp;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized e()I
    .locals 9

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljp;->b:Lhs;

    iget-object v1, p0, Ljp;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const-string v3, "read_extend=0 and type=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lhs;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Ljp;->b:Lhs;

    invoke-virtual {v1}, Lhs;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public final synthetic insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)J
    .locals 2

    check-cast p1, Lmk;

    invoke-virtual {p0, p1, p2}, Ljp;->a(Lmk;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)J

    move-result-wide v0

    return-wide v0
.end method
