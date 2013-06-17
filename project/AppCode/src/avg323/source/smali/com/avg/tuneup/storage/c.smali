.class Lcom/avg/tuneup/storage/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/storage/b;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/storage/b;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v0}, Lcom/avg/tuneup/storage/b;->a(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v1}, Lcom/avg/tuneup/storage/b;->b(Lcom/avg/tuneup/storage/b;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    iget-object v2, p0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/avg/tuneup/storage/b;->a(Lcom/avg/tuneup/storage/b;Landroid/content/pm/PackageManager;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avg/tuneup/storage/b;->a(Lcom/avg/tuneup/storage/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v1}, Lcom/avg/tuneup/storage/b;->b(Lcom/avg/tuneup/storage/b;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v1}, Lcom/avg/tuneup/storage/b;->c(Lcom/avg/tuneup/storage/b;)V

    iget-object v1, p0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v1}, Lcom/avg/tuneup/storage/b;->d(Lcom/avg/tuneup/storage/b;)V

    :cond_2
    iget-object v1, p0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v1}, Lcom/avg/tuneup/storage/b;->e(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v1}, Lcom/avg/tuneup/storage/b;->n(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    new-instance v2, Lcom/avg/tuneup/storage/d;

    invoke-direct {v2, p0, v0}, Lcom/avg/tuneup/storage/d;-><init>(Lcom/avg/tuneup/storage/c;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
