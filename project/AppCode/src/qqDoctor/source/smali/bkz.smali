.class final Lbkz;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field final synthetic a:Llb;

.field final synthetic b:I

.field final synthetic c:Lbkn;


# direct methods
.method constructor <init>(Lbkn;Llb;I)V
    .locals 0

    iput-object p1, p0, Lbkz;->c:Lbkn;

    iput-object p2, p0, Lbkz;->a:Llb;

    iput p3, p0, Lbkz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbkz;->c:Lbkn;

    invoke-static {v0}, Lbkn;->b(Lbkn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbkz;->c:Lbkn;

    invoke-static {v1}, Lbkn;->b(Lbkn;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0486

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbkz;->c:Lbkn;

    invoke-static {v0}, Lbkn;->b(Lbkn;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lbla;

    invoke-direct {v1, p0}, Lbla;-><init>(Lbkz;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
