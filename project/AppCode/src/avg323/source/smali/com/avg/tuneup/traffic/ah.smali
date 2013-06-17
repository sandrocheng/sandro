.class Lcom/avg/tuneup/traffic/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/pm/PackageManager;

.field final synthetic b:Lcom/avg/tuneup/traffic/y;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/y;Landroid/content/pm/PackageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/ah;->b:Lcom/avg/tuneup/traffic/y;

    iput-object p2, p0, Lcom/avg/tuneup/traffic/ah;->a:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ah;->b:Lcom/avg/tuneup/traffic/y;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/ah;->a:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/ah;->b:Lcom/avg/tuneup/traffic/y;

    invoke-static {v2}, Lcom/avg/tuneup/traffic/y;->a(Lcom/avg/tuneup/traffic/y;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avg/tuneup/traffic/y;->a(Lcom/avg/tuneup/traffic/y;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ah;->b:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->C(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/ah;->b:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->D(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    new-instance v1, Lcom/avg/tuneup/traffic/ai;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/traffic/ai;-><init>(Lcom/avg/tuneup/traffic/ah;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
