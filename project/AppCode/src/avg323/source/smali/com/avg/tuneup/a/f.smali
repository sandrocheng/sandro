.class Lcom/avg/tuneup/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/a/c;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/a/f;->a:Lcom/avg/tuneup/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/avg/tuneup/a/f;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v0}, Lcom/avg/tuneup/a/c;->a(Lcom/avg/tuneup/a/c;)I

    move-result v0

    iget-object v1, p0, Lcom/avg/tuneup/a/f;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v1}, Lcom/avg/tuneup/a/c;->b(Lcom/avg/tuneup/a/c;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/avg/tuneup/a/f;->a:Lcom/avg/tuneup/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/avg/tuneup/a/f;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v5}, Lcom/avg/tuneup/a/c;->c(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;

    move-result-object v5

    sget v6, Lcom/avg/a/g;->performance_running_tasks:I

    invoke-virtual {v5, v6}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/avg/tuneup/a/c;->a(Lcom/avg/tuneup/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/avg/tuneup/a/f;->a:Lcom/avg/tuneup/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avg/tuneup/a/f;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v4}, Lcom/avg/tuneup/a/c;->d(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;

    move-result-object v4

    sget v5, Lcom/avg/a/g;->performance_free_memory:I

    invoke-virtual {v4, v5}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avg/tuneup/a/f;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v4}, Lcom/avg/tuneup/a/c;->e(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avg/tuneup/a/c;->a(Lcom/avg/tuneup/a/c;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/avg/tuneup/a/f;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v0}, Lcom/avg/tuneup/a/c;->g(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    new-instance v1, Lcom/avg/tuneup/a/g;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/a/g;-><init>(Lcom/avg/tuneup/a/f;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
