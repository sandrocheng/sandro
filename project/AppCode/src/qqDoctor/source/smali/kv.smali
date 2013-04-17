.class public final Lkv;
.super Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lkw;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkv;->e:Z

    return-void
.end method

.method public constructor <init>(Lkw;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkv;->e:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkv;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lkw;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkv;->mUrl:Ljava/lang/String;

    iput-object p1, p0, Lkv;->d:Lkw;

    return-void
.end method
