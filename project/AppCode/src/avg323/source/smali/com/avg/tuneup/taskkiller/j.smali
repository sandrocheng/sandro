.class Lcom/avg/tuneup/taskkiller/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/avg/tuneup/taskkiller/h;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/taskkiller/h;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iput-object p2, p0, Lcom/avg/tuneup/taskkiller/j;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/j;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/taskkiller/b;

    :try_start_0
    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v1, v1, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v1}, Lcom/avg/tuneup/taskkiller/d;->l(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v2, v0, Lcom/avg/tuneup/taskkiller/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v1, v1, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v1}, Lcom/avg/tuneup/taskkiller/d;->o(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    new-instance v2, Lcom/avg/tuneup/taskkiller/k;

    invoke-direct {v2, p0, v0}, Lcom/avg/tuneup/taskkiller/k;-><init>(Lcom/avg/tuneup/taskkiller/j;Lcom/avg/tuneup/taskkiller/b;)V

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "could not restart package"

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
