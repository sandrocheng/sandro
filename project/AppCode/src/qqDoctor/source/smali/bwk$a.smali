.class final Lbwk$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Lbwn;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbwn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lbwo;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbwk$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lbwk$a;->a:Lbwn;

    return-void
.end method


# virtual methods
.method public final getNetDataEntity()Lcom/tencent/tmsecure/module/network/NetDataEntity;
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/tencent/tmsecure/module/network/NetDataEntity;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/network/NetDataEntity;-><init>()V

    const/4 v0, 0x4

    new-array v3, v0, [J

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lbwk$a;->b:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbtd;->b(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_1

    :cond_0
    aget-wide v0, v3, v1

    iput-wide v0, v2, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mReceiver:J

    aget-wide v0, v3, v11

    iput-wide v0, v2, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mReceiverPks:J

    aget-wide v0, v3, v12

    iput-wide v0, v2, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mTranslate:J

    aget-wide v0, v3, v13

    iput-wide v0, v2, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mTranslatePks:J

    return-object v2

    :cond_1
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[:\\s]+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lbwk$a;->a:Lbwn;

    invoke-virtual {v8, v7}, Lbwn;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-wide v7, v3, v1

    aget-object v9, v6, v11

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v3, v1

    aget-wide v7, v3, v11

    aget-object v9, v6, v12

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v3, v11

    aget-wide v7, v3, v12

    const/16 v9, 0x9

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v3, v12

    aget-wide v7, v3, v13

    const/16 v9, 0xa

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long v6, v7, v9

    aput-wide v6, v3, v13

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
