.class final Lcom/ijinshan/bootmanager/activity/c;
.super Ljava/lang/Object;
.source "AutoBootMangerActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 189
    packed-switch p2, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Lcom/ijinshan/bootmanager/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Lcom/ijinshan/bootmanager/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/a/a;->a(Ljava/util/List;)V

    .line 193
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Lcom/ijinshan/bootmanager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/a/a;->notifyDataSetChanged()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b0592

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    sget-object v1, Lcom/ijinshan/bootmanager/activity/i;->a:Lcom/ijinshan/bootmanager/activity/i;

    iput-object v1, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c:Lcom/ijinshan/bootmanager/activity/i;

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->g(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->h(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b0593

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    sget-object v1, Lcom/ijinshan/bootmanager/activity/i;->b:Lcom/ijinshan/bootmanager/activity/i;

    iput-object v1, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c:Lcom/ijinshan/bootmanager/activity/i;

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->d(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b058a

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->e(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->f(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Lcom/ijinshan/bootmanager/a/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Lcom/ijinshan/bootmanager/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->i(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/a/a;->a(Ljava/util/List;)V

    .line 215
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Lcom/ijinshan/bootmanager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/a/a;->notifyDataSetChanged()V

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->i(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->h(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->d(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b0594

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->f(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->e(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/c;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x7f0800cc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
