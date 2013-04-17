.class final Lawo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lawj;


# direct methods
.method constructor <init>(Lawj;)V
    .locals 0

    iput-object p1, p0, Lawo;->a:Lawj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08002b

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lawo;->a:Lawj;

    invoke-virtual {v0}, Lawj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    iget-object v0, p0, Lawo;->a:Lawj;

    invoke-virtual {v0}, Lawj;->onBackClick()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0803b5

    if-eq v0, v1, :cond_0

    const v1, 0x7f0803a7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lawo;->a:Lawj;

    iget-object v1, p0, Lawo;->a:Lawj;

    invoke-static {v1}, Lawj;->a(Lawj;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lawo;->a:Lawj;

    invoke-static {v2}, Lawj;->e(Lawj;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lawo;->a:Lawj;

    invoke-static {v3}, Lawj;->f(Lawj;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lawj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lawo;->a:Lawj;

    invoke-static {v0}, Lawj;->g(Lawj;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lawo;->a:Lawj;

    invoke-static {v2}, Lawj;->h(Lawj;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0114

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lawo;->a:Lawj;

    invoke-static {v2}, Lawj;->e(Lawj;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lawo;->a:Lawj;

    invoke-static {v0}, Lawj;->i(Lawj;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lawo;->a:Lawj;

    invoke-static {v1}, Lawj;->j(Lawj;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0115

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
