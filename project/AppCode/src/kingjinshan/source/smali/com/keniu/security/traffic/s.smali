.class final Lcom/keniu/security/traffic/s;
.super Landroid/widget/ArrayAdapter;
.source "SaveTrafficWhiteListActivity.java"


# instance fields
.field final synthetic a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;Landroid/content/Context;[Lcom/keniu/security/traffic/f;Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/traffic/s;->b:Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;

    iput-object p4, p0, Lcom/keniu/security/traffic/s;->a:Landroid/view/LayoutInflater;

    const v0, 0x7f030116

    const v1, 0x7f080298

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 50
    new-instance v1, Lcom/keniu/security/traffic/t;

    iget-object v0, p0, Lcom/keniu/security/traffic/s;->b:Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;

    invoke-direct {v1, v0}, Lcom/keniu/security/traffic/t;-><init>(Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;)V

    .line 51
    iget-object v0, p0, Lcom/keniu/security/traffic/s;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030116

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 53
    const v0, 0x7f080296

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/keniu/security/traffic/t;->b:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f080298

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/keniu/security/traffic/t;->c:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0803f1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/keniu/security/traffic/t;->a:Landroid/widget/CheckBox;

    .line 59
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    move-object v1, v2

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/traffic/s;->b:Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;->a(Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;)[Lcom/keniu/security/traffic/f;

    move-result-object v2

    aget-object v2, v2, p1

    .line 65
    iget-object v3, v0, Lcom/keniu/security/traffic/t;->b:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v3, v0, Lcom/keniu/security/traffic/t;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/keniu/security/traffic/f;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, v0, Lcom/keniu/security/traffic/t;->a:Landroid/widget/CheckBox;

    iget-boolean v2, v2, Lcom/keniu/security/traffic/f;->k:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    return-object v1

    .line 61
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/t;

    move-object v1, p2

    goto :goto_0
.end method
