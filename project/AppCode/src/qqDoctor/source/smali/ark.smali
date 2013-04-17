.class final Lark;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lari;


# direct methods
.method constructor <init>(Lari;)V
    .locals 0

    iput-object p1, p0, Lark;->a:Lari;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lark;->a:Lari;

    invoke-static {v0}, Lari;->d(Lari;)Lari$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lark;->a:Lari;

    invoke-static {v0}, Lari;->d(Lari;)Lari$a;

    move-result-object v0

    invoke-virtual {v0}, Lari$a;->a()V

    :cond_0
    iget-object v0, p0, Lark;->a:Lari;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lari;->a(Lari;Lari$a;)Lari$a;

    iget-object v0, p0, Lark;->a:Lari;

    invoke-static {v0}, Lari;->a(Lari;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
