.class public final Lcom/hoi/widget/g;
.super Lcom/ijinshan/kpref/DialogPreference;
.source "EditTextPreference.java"


# instance fields
.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kpref/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/hoi/widget/g;->a(I)V

    .line 23
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/hoi/widget/g;->o:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/hoi/widget/g;->p:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method protected final I_()Landroid/view/View;
    .locals 4

    .prologue
    .line 37
    invoke-super {p0}, Lcom/ijinshan/kpref/DialogPreference;->I_()Landroid/view/View;

    move-result-object v1

    .line 38
    const v0, 0x7f08011f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hoi/widget/g;->q:Landroid/widget/EditText;

    .line 45
    invoke-virtual {p0}, Lcom/hoi/widget/g;->A()Ljava/lang/String;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/hoi/widget/g;->E()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 48
    iget-object v2, p0, Lcom/hoi/widget/g;->q:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/hoi/widget/g;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 51
    const v0, 0x7f08011e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    iget-object v2, p0, Lcom/hoi/widget/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/hoi/widget/g;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 56
    const v0, 0x7f080120

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lcom/hoi/widget/g;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_2
    return-object v1
.end method

.method protected final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/DialogPreference;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/hoi/widget/g;->A()Ljava/lang/String;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/hoi/widget/g;->E()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hoi/widget/g;->b(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 66
    return-object p1
.end method

.method protected final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 71
    if-eqz p1, :cond_1

    .line 72
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lcom/hoi/widget/g;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 77
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hoi/widget/g;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/hoi/widget/g;->F()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lcom/hoi/widget/g;->A()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    :cond_1
    return-void
.end method
