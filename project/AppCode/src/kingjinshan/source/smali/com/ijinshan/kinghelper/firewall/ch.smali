.class final Lcom/ijinshan/kinghelper/firewall/ch;
.super Ljava/lang/Object;
.source "IpDialSettingsActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Landroid/widget/RadioButton;

.field final synthetic c:Landroid/widget/RadioButton;

.field final synthetic d:Landroid/widget/RadioButton;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ch;->f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/ch;->a:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/ijinshan/kinghelper/firewall/ch;->b:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/ijinshan/kinghelper/firewall/ch;->c:Landroid/widget/RadioButton;

    iput-object p5, p0, Lcom/ijinshan/kinghelper/firewall/ch;->d:Landroid/widget/RadioButton;

    iput-object p6, p0, Lcom/ijinshan/kinghelper/firewall/ch;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 647
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ch;->f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->m(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ch;->f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->m(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 659
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ch;->f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->m(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Z)Z

    .line 664
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ch;->f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->m(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 666
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-eq p2, v0, :cond_4

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->n(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->f:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0, v3}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Z)Z

    .line 671
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ch;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    :cond_4
    return-void
.end method
