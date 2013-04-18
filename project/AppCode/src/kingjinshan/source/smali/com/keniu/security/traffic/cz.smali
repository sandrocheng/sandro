.class public final Lcom/keniu/security/traffic/cz;
.super Landroid/widget/BaseAdapter;
.source "TrafficSoftListAdapter.java"


# instance fields
.field public a:Ljava/util/Vector;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/keniu/security/traffic/cz;->a:Ljava/util/Vector;

    .line 31
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/keniu/security/traffic/cz;->b:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method

.method private b(Ljava/util/Vector;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/keniu/security/traffic/cz;->a:Ljava/util/Vector;

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Vector;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/keniu/security/traffic/cz;->a:Ljava/util/Vector;

    .line 26
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/keniu/security/traffic/cz;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/keniu/security/traffic/cz;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    if-nez p2, :cond_1

    .line 53
    iget-object v0, p0, Lcom/keniu/security/traffic/cz;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/traffic/cz;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/ae;

    .line 57
    const v0, 0x7f08025c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    const v1, 0x7f08025d

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    const v2, 0x7f08025e

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    const v3, 0x7f08025f

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 63
    iget-object v5, p0, Lcom/keniu/security/traffic/ae;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/keniu/security/traffic/ae;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-wide v0, p0, Lcom/keniu/security/traffic/ae;->f:J

    const-wide/16 v5, -0x3e8

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    .line 66
    const-string v0, "\u5171\u8ba1"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_1
    iget-wide v0, p0, Lcom/keniu/security/traffic/ae;->e:J

    invoke-static {v0, v1}, Lcom/keniu/security/util/ax;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-object v4

    .line 68
    :cond_0
    iget-wide v0, p0, Lcom/keniu/security/traffic/ae;->f:J

    invoke-static {v0, v1}, Lcom/keniu/security/util/ax;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    move-object v4, p2

    goto :goto_0
.end method
