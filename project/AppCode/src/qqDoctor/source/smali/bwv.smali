.class public Lbwv;
.super Lbwu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;",
        ">",
        "Lbwu",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final TEMPFILE_SUFFIX:Ljava/lang/String; = ".tmp"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbwu;-><init>()V

    return-void
.end method


# virtual methods
.method protected doBeforeContinue(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-wide/16 v8, 0x0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    check-cast v0, Lbww;

    invoke-virtual {v0}, Lbww;->a()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mParentPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isOnChangeRetry:Z

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    iget-wide v4, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_6

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-wide v2, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_4

    iget-wide v2, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    long-to-float v0, v2

    iget-wide v2, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    :goto_1
    iget-boolean v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isOnChangeRetry:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-wide v2, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_5

    :cond_3
    new-instance v0, Lbww;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lbww;-><init>(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;ZLjava/lang/String;)V

    :goto_2
    invoke-virtual {v0, p0}, Lbww;->a(Lbwv;)V

    iput-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    return-void

    :cond_4
    const/4 v0, 0x0

    iput v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    goto :goto_1

    :cond_5
    new-instance v0, Lbww;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Lbww;-><init>(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;ZLjava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v0, v1

    move-object v1, v3

    goto :goto_0
.end method

.method protected doBeforeStart(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    check-cast v0, Lbww;

    invoke-virtual {v0}, Lbww;->a()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mParentPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mParentPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lbwv;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mParentPath:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbwv;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    new-instance v0, Lbww;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lbww;-><init>(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;ZLjava/lang/String;)V

    invoke-virtual {v0, p0}, Lbww;->a(Lbwv;)V

    iput-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method protected doDeleteFile(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbwv;->doPause(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mParentPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".tmp"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method protected doDeleteFile(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {p0, v0}, Lbwv;->doDeleteFile(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected doFinish(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mParentPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".tmp"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    return-void
.end method

.method protected doPause(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    check-cast v0, Lbww;

    invoke-virtual {v0}, Lbww;->a()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mParentPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_1
    return-void
.end method

.method public setDownloadDirPath(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lbwv;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbwv;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method
