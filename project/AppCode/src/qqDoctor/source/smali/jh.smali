.class public final Ljh;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;


# instance fields
.field private n:Lhs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "imei"

    sput-object v0, Ljh;->a:Ljava/lang/String;

    const-string v0, "status"

    sput-object v0, Ljh;->b:Ljava/lang/String;

    const-string v0, "phonenum"

    sput-object v0, Ljh;->c:Ljava/lang/String;

    const-string v0, "memo"

    sput-object v0, Ljh;->d:Ljava/lang/String;

    const-string v0, "uin"

    sput-object v0, Ljh;->e:Ljava/lang/String;

    const-string v0, "changesim"

    sput-object v0, Ljh;->f:Ljava/lang/String;

    const-string v0, "chsimtime"

    sput-object v0, Ljh;->g:Ljava/lang/String;

    const-string v0, "changephone"

    sput-object v0, Ljh;->h:Ljava/lang/String;

    const-string v0, "subplatform"

    sput-object v0, Ljh;->i:Ljava/lang/String;

    const-string v0, "bindtime"

    sput-object v0, Ljh;->j:Ljava/lang/String;

    const-string v0, "ua"

    sput-object v0, Ljh;->k:Ljava/lang/String;

    const-string v0, "useragent"

    sput-object v0, Ljh;->l:Ljava/lang/String;

    const-string v0, "urgentphone"

    sput-object v0, Ljh;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lhs;->a()Lhs;

    move-result-object v0

    iput-object v0, p0, Ljh;->n:Lhs;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/stBindPhoneInfo;",
            ">;"
        }
    .end annotation

    const-string v1, "SELECT * FROM bind_phone_info"

    move-object/from16 v0, p0

    iget-object v2, v0, Ljh;->n:Lhs;

    invoke-virtual {v2, v1}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sget-object v2, Ljh;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Ljh;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Ljh;->c:Ljava/lang/String;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Ljh;->d:Ljava/lang/String;

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Ljh;->e:Ljava/lang/String;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Ljh;->f:Ljava/lang/String;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Ljh;->g:Ljava/lang/String;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Ljh;->h:Ljava/lang/String;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Ljh;->i:Ljava/lang/String;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    sget-object v11, Ljh;->j:Ljava/lang/String;

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    sget-object v12, Ljh;->k:Ljava/lang/String;

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    sget-object v13, Ljh;->l:Ljava/lang/String;

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    sget-object v14, Ljh;->m:Ljava/lang/String;

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_0

    new-instance v16, LQQPIM/stBindPhoneInfo;

    invoke-direct/range {v16 .. v16}, LQQPIM/stBindPhoneInfo;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, LQQPIM/stBindPhoneInfo;->setImei(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, LQQPIM/stBindPhoneInfo;->setStatus(S)V

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, LQQPIM/stBindPhoneInfo;->setPhonenum(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, LQQPIM/stBindPhoneInfo;->setMemo(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, LQQPIM/stBindPhoneInfo;->setUin(J)V

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, LQQPIM/stBindPhoneInfo;->setChangesim(S)V

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, LQQPIM/stBindPhoneInfo;->setChsimtime(I)V

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, LQQPIM/stBindPhoneInfo;->setChangephone(Ljava/lang/String;)V

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, LQQPIM/stBindPhoneInfo;->setSubplatform(S)V

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, LQQPIM/stBindPhoneInfo;->setBindtime(I)V

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, LQQPIM/stBindPhoneInfo;->setUa(Ljava/lang/String;)V

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, LQQPIM/stBindPhoneInfo;->setUseragent(Ljava/lang/String;)V

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, LQQPIM/stBindPhoneInfo;->setUrgentphone(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v15
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/stBindPhoneInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ljh;->n:Lhs;

    const-string v1, "bind_phone_info"

    invoke-virtual {v0, v1}, Lhs;->c(Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/stBindPhoneInfo;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    sget-object v3, Ljh;->a:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Ljh;->b:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getStatus()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Ljh;->c:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getPhonenum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Ljh;->d:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getMemo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Ljh;->e:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getUin()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Ljh;->f:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getChangesim()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Ljh;->g:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getChsimtime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Ljh;->h:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getChangephone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Ljh;->i:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getSubplatform()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Ljh;->j:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getBindtime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Ljh;->k:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getUa()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Ljh;->l:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getUseragent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Ljh;->m:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getUrgentphone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljh;->n:Lhs;

    const-string v3, "bind_phone_info"

    sget-object v4, Ljh;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_0
    return-void
.end method
