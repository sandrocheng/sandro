.class public Lcom/hoi/widget/SpinnerButton;
.super Landroid/widget/Spinner;
.source "SpinnerButton.java"


# instance fields
.field protected a:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/ArrayAdapter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hoi/widget/SpinnerButton;->b:Landroid/widget/ArrayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/hoi/widget/SpinnerButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/hoi/widget/SpinnerButton;->b:Landroid/widget/ArrayAdapter;

    .line 49
    iget-object v0, p0, Lcom/hoi/widget/SpinnerButton;->b:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 50
    iget-object v0, p0, Lcom/hoi/widget/SpinnerButton;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 51
    iget-object v0, p0, Lcom/hoi/widget/SpinnerButton;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/hoi/widget/SpinnerButton;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/hoi/widget/SpinnerButton;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hoi/widget/SpinnerButton;->setSelection(I)V

    .line 54
    return-void
.end method

.method public performClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, v2}, Lcom/hoi/widget/SpinnerButton;->sendAccessibilityEvent(I)V

    .line 37
    iget-object v0, p0, Lcom/hoi/widget/SpinnerButton;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0, v1}, Lcom/hoi/widget/SpinnerButton;->playSoundEffect(I)V

    .line 39
    iget-object v0, p0, Lcom/hoi/widget/SpinnerButton;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v2

    .line 43
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/hoi/widget/SpinnerButton;->a:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method
