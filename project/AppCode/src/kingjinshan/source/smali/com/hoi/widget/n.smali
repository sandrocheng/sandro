.class public final Lcom/hoi/widget/n;
.super Lcom/keniu/security/util/CustomDialogPreference;
.source "HorizontalNumberPreference.java"


# instance fields
.field private o:Ljava/lang/String;

.field private p:Lcom/hoi/widget/HorizontalNumberPicker;

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/util/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/hoi/widget/n;->b(I)V

    .line 27
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/hoi/widget/n;->c(I)V

    .line 28
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hoi/widget/n;->t:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/hoi/widget/n;->o:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method protected final J_()Landroid/view/View;
    .locals 4

    .prologue
    .line 46
    invoke-super {p0}, Lcom/keniu/security/util/CustomDialogPreference;->J_()Landroid/view/View;

    move-result-object v1

    .line 47
    const v0, 0x7f080159

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/HorizontalNumberPicker;

    iput-object v0, p0, Lcom/hoi/widget/n;->p:Lcom/hoi/widget/HorizontalNumberPicker;

    .line 49
    iget-object v0, p0, Lcom/hoi/widget/n;->p:Lcom/hoi/widget/HorizontalNumberPicker;

    iget v2, p0, Lcom/hoi/widget/n;->q:I

    iget v3, p0, Lcom/hoi/widget/n;->r:I

    invoke-virtual {v0, v2, v3}, Lcom/hoi/widget/HorizontalNumberPicker;->a(II)V

    .line 50
    iget-object v0, p0, Lcom/hoi/widget/n;->p:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/HorizontalNumberPicker;->a()V

    .line 51
    invoke-virtual {p0}, Lcom/hoi/widget/n;->A()Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/hoi/widget/n;->E()Landroid/content/SharedPreferences;

    move-result-object v2

    iget v3, p0, Lcom/hoi/widget/n;->s:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    iget-object v2, p0, Lcom/hoi/widget/n;->p:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-virtual {v2, v0}, Lcom/hoi/widget/HorizontalNumberPicker;->a(I)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/hoi/widget/n;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 57
    const v0, 0x7f080158

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v2, p0, Lcom/hoi/widget/n;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_1
    return-object v1
.end method

.method protected final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/hoi/widget/n;->t:Landroid/view/LayoutInflater;

    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/hoi/widget/n;->A()Ljava/lang/String;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/hoi/widget/n;->E()Landroid/content/SharedPreferences;

    move-result-object v2

    iget v3, p0, Lcom/hoi/widget/n;->s:I

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hoi/widget/n;->b(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 68
    return-object p1
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput p1, p0, Lcom/hoi/widget/n;->s:I

    .line 102
    return-void
.end method

.method protected final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/hoi/widget/n;->p:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/HorizontalNumberPicker;->d()I

    move-result v0

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hoi/widget/n;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/hoi/widget/n;->F()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/hoi/widget/n;->A()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/hoi/widget/n;->q:I

    .line 97
    const/16 v0, 0x1f

    iput v0, p0, Lcom/hoi/widget/n;->r:I

    .line 98
    return-void
.end method
