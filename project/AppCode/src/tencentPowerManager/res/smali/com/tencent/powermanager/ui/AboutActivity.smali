.class public Lcom/tencent/powermanager/ui/AboutActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lbt;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "<font color=\"#047ecb\"><a href=\'http://fwd.3g.qq.com:8080/forward.jsp?bid=908\'>%s</a></font>"

    iput-object v0, p0, Lcom/tencent/powermanager/ui/AboutActivity;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/powermanager/ui/AboutActivity;->b:Landroid/widget/Button;

    iput-object v1, p0, Lcom/tencent/powermanager/ui/AboutActivity;->c:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/powermanager/ui/AboutActivity;->d:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/powermanager/ui/AboutActivity;->e:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/powermanager/ui/AboutActivity;->f:Lbt;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/AboutActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/tencent/powermanager/ui/AboutActivity;->requestWindowFeature(I)Z

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/AboutActivity;->setContentView(I)V

    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/AboutActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/AboutActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/AboutActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/AboutActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/AboutActivity;->e:Landroid/widget/TextView;

    invoke-static {}, Lbt;->a()Lbt;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/ui/AboutActivity;->f:Lbt;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/AboutActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f060096

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/ui/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/powermanager/ui/AboutActivity;->f:Lbt;

    invoke-virtual {v3}, Lbt;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/powermanager/ui/AboutActivity;->a:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f060097

    invoke-virtual {p0, v2}, Lcom/tencent/powermanager/ui/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/ui/AboutActivity;->a:Ljava/lang/String;

    const v0, 0x7f060093

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"

    aput-object v2, v1, v5

    const-string v2, "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tencent/powermanager/ui/AboutActivity;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/ui/AboutActivity;->d:Landroid/widget/TextView;

    const v2, 0x7f060095

    invoke-virtual {p0, v2}, Lcom/tencent/powermanager/ui/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/powermanager/ui/AboutActivity;->f:Lbt;

    invoke-virtual {v4}, Lbt;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/powermanager/ui/AboutActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/powermanager/ui/AboutActivity;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
