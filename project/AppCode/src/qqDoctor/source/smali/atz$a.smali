.class final Latz$a;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private synthetic b:Latz;


# direct methods
.method public constructor <init>(Latz;)V
    .locals 2

    iput-object p1, p0, Latz$a;->b:Latz;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const v0, 0x7f080065

    iput v0, p0, Latz$a;->a:I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p0, v0}, Latz$a;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Latz$a;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "http://aq.qq.com/cn2/ipwd/my_ipwd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Latz$a;->b:Latz;

    invoke-static {v0}, Latz;->c(Latz;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080065
        :pswitch_0
    .end packed-switch
.end method
