.class Lcom/avg/ui/general/c/d;
.super Lcom/avg/ui/general/c/e;


# instance fields
.field final synthetic a:Lcom/avg/ui/general/c/c;


# direct methods
.method constructor <init>(Lcom/avg/ui/general/c/c;Landroid/app/NotificationManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/c/d;->a:Lcom/avg/ui/general/c/c;

    invoke-direct {p0, p1, p2, p3}, Lcom/avg/ui/general/c/e;-><init>(Lcom/avg/ui/general/c/c;Landroid/app/NotificationManager;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/avg/ui/general/c/d;->b:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/avg/ui/general/c/d;->c:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
