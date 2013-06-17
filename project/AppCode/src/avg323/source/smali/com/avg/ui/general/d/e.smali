.class Lcom/avg/ui/general/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avg/ui/general/d/b;


# direct methods
.method constructor <init>(Lcom/avg/ui/general/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/d/e;->a:Lcom/avg/ui/general/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/d/e;->a:Lcom/avg/ui/general/d/b;

    invoke-static {v0}, Lcom/avg/ui/general/d/b;->a(Lcom/avg/ui/general/d/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/avg/ui/general/d/e;->a:Lcom/avg/ui/general/d/b;

    invoke-static {v0}, Lcom/avg/ui/general/d/b;->b(Lcom/avg/ui/general/d/b;)V

    iget-object v0, p0, Lcom/avg/ui/general/d/e;->a:Lcom/avg/ui/general/d/b;

    invoke-static {v0}, Lcom/avg/ui/general/d/b;->c(Lcom/avg/ui/general/d/b;)V

    return-void
.end method
