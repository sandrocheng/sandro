.class Lcom/avg/tuneup/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/ui/general/c/b;

.field final synthetic b:I

.field final synthetic c:Lcom/avg/tuneup/b;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/b;Lcom/avg/ui/general/c/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/d;->c:Lcom/avg/tuneup/b;

    iput-object p2, p0, Lcom/avg/tuneup/d;->a:Lcom/avg/ui/general/c/b;

    iput p3, p0, Lcom/avg/tuneup/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/avg/tuneup/d;->c:Lcom/avg/tuneup/b;

    iget-object v1, p0, Lcom/avg/tuneup/d;->a:Lcom/avg/ui/general/c/b;

    iget-object v1, v1, Lcom/avg/ui/general/c/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avg/tuneup/b;->a(Lcom/avg/tuneup/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avg/tuneup/d;->c:Lcom/avg/tuneup/b;

    invoke-static {v0}, Lcom/avg/tuneup/b;->a(Lcom/avg/tuneup/b;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const-string v1, "StorageFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/storage/b;

    iget v1, p0, Lcom/avg/tuneup/d;->b:I

    iput v1, v0, Lcom/avg/tuneup/storage/b;->a:I

    iget-object v0, p0, Lcom/avg/tuneup/d;->c:Lcom/avg/tuneup/b;

    invoke-static {v0}, Lcom/avg/tuneup/b;->a(Lcom/avg/tuneup/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage_usage"

    const-string v2, "uninstall_app"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
