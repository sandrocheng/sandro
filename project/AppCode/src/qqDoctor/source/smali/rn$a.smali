.class final Lrn$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

.field b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field c:Lkw;

.field final synthetic d:Lrn;

.field private e:Landroid/view/View;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lrn;Lkw;)V
    .locals 6

    const/4 v4, 0x0

    iput-object p1, p0, Lrn$a;->d:Lrn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    invoke-static {p1}, Lrn;->d(Lrn;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lrn$a;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    invoke-static {p1}, Lrn;->d(Lrn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lrn$a;->e:Landroid/view/View;

    iput-object p2, p0, Lrn$a;->c:Lkw;

    iget-object v0, p0, Lrn$a;->e:Landroid/view/View;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lrn$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lrn$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lrr;

    invoke-direct {v1, p0}, Lrr;-><init>(Lrn$a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lrn$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    iget-object v0, p0, Lrn$a;->e:Landroid/view/View;

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lrn$a;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lrn$a;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-static {p1}, Lrn;->d(Lrn;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lrn$a;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lrt;

    invoke-direct {v1, p0}, Lrt;-><init>(Lrn$a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lrn$a;->e:Landroid/view/View;

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrn$a;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lrn$a;->g:Landroid/widget/TextView;

    invoke-static {p1}, Lrn;->d(Lrn;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0992

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lrn$a;->e:Landroid/view/View;

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrn$a;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lrn$a;->h:Landroid/widget/TextView;

    invoke-static {p1}, Lrn;->d(Lrn;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0993

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p2}, Lkw;->S()J

    move-result-wide v4

    invoke-static {v4, v5}, La;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lrn$a;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    iget-object v1, p0, Lrn$a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->setView(Landroid/view/View;)V

    return-void
.end method
