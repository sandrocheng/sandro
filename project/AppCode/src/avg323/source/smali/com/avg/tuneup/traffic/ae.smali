.class Lcom/avg/tuneup/traffic/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/widget/TableLayout;

.field final synthetic c:Lcom/avg/tuneup/traffic/y;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/y;ZLandroid/widget/TableLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    iput-boolean p2, p0, Lcom/avg/tuneup/traffic/ae;->a:Z

    iput-object p3, p0, Lcom/avg/tuneup/traffic/ae;->b:Landroid/widget/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->i(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v0

    iget-boolean v1, p0, Lcom/avg/tuneup/traffic/ae;->a:Z

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/traffic/s;->a(Z)[D

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/y;->j(Lcom/avg/tuneup/traffic/y;)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/y;->k(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/y;->z(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    new-instance v2, Lcom/avg/tuneup/traffic/af;

    invoke-direct {v2, p0, v0}, Lcom/avg/tuneup/traffic/af;-><init>(Lcom/avg/tuneup/traffic/ae;[D)V

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
