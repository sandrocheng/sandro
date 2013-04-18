.class final Lcom/ijinshan/kinghelper/firewall/ew;
.super Ljava/lang/Object;
.source "UserBlackAddByAreasActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/hoi/widget/SpinnerButton;

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;Lcom/hoi/widget/SpinnerButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/ew;->a:Lcom/hoi/widget/SpinnerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 194
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->a(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)[[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    array-length v0, v0

    if-le v0, v3, :cond_0

    .line 195
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->c(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)Lcom/hoi/widget/SpinnerButton;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->a(ILcom/hoi/widget/SpinnerButton;)Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->d(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 197
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v0, p2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->a(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;I)I

    .line 198
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;I)I

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->e(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)I

    .line 203
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)[[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->f(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)I

    move-result v2

    aget-object v1, v1, v2

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->a(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->a:Lcom/hoi/widget/SpinnerButton;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->h(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/SpinnerButton;->a(Ljava/lang/String;)V

    .line 210
    :goto_1
    return-void

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;I)I

    goto :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)[[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->f(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->g(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->b(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ew;->a:Lcom/hoi/widget/SpinnerButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->h(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ew;->b:Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;->i(Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/SpinnerButton;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
