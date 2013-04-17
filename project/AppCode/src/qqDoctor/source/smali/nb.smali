.class public final Lnb;
.super Lmx$b;


# instance fields
.field private synthetic c:Lmx;


# direct methods
.method public constructor <init>(Lmx;)V
    .locals 2

    iput-object p1, p0, Lnb;->c:Lmx;

    const v0, 0x7f0b0667

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmx$b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 3

    iget-object v0, p0, Lnb;->c:Lmx;

    iget-object v0, v0, Lmx;->a:Landroid/content/Context;

    invoke-static {v0}, Lmx;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnb;->c:Lmx;

    iget-object v0, v0, Lmx;->a:Landroid/content/Context;

    iget-object v1, p0, Lnb;->c:Lmx;

    iget-object v1, v1, Lmx;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b066b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lnb;->c:Lmx;

    iget-object v0, v0, Lmx;->a:Landroid/content/Context;

    const-string v1, "http://misc.3g.qq.com/g/s?aid=gqget&g_f=7279"

    invoke-static {v0, v1}, Lmx;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
