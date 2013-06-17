.class Lcom/avg/tuneup/storage/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/storage/d;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/storage/d;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/storage/e;->a:Lcom/avg/tuneup/storage/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/storage/e;->a:Lcom/avg/tuneup/storage/d;

    iget-object v0, v0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-virtual {v0}, Lcom/avg/tuneup/storage/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/avg/tuneup/storage/e;->a:Lcom/avg/tuneup/storage/d;

    iget-object v0, v0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    iget-object v1, p0, Lcom/avg/tuneup/storage/e;->a:Lcom/avg/tuneup/storage/d;

    iget-object v1, v1, Lcom/avg/tuneup/storage/d;->a:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/avg/tuneup/storage/e;->a:Lcom/avg/tuneup/storage/d;

    iget-object v2, v2, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v2, v2, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v2}, Lcom/avg/tuneup/storage/b;->b(Lcom/avg/tuneup/storage/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avg/tuneup/storage/b;->a(Lcom/avg/tuneup/storage/b;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/avg/tuneup/storage/e;->a:Lcom/avg/tuneup/storage/d;

    iget-object v0, v0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v0}, Lcom/avg/tuneup/storage/b;->l(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/storage/e;->a:Lcom/avg/tuneup/storage/d;

    iget-object v0, v0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v0}, Lcom/avg/tuneup/storage/b;->m(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    new-instance v1, Lcom/avg/tuneup/storage/f;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/storage/f;-><init>(Lcom/avg/tuneup/storage/e;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
