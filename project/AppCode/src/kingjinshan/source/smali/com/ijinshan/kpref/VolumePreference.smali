.class public Lcom/ijinshan/kpref/VolumePreference;
.super Lcom/ijinshan/kpref/SeekBarPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/ijinshan/kpref/w;


# static fields
.field private static final o:Ljava/lang/String; = "VolumePreference"


# instance fields
.field private p:I

.field private q:Lcom/ijinshan/kpref/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/ijinshan/kpref/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v0, Lcom/android/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    iput v1, p0, Lcom/ijinshan/kpref/VolumePreference;->p:I

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method

.method private b(I)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/ijinshan/kpref/VolumePreference;->p:I

    .line 62
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/ijinshan/kpref/VolumePreference;->I()Lcom/ijinshan/kpref/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/t;->b(Lcom/ijinshan/kpref/w;)V

    .line 121
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/ijinshan/kpref/VolumePreference;->j()Landroid/app/Dialog;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x10201f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/aa;->b()V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/aa;->a()V

    .line 131
    iput-object v2, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    .line 134
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/ijinshan/kpref/VolumePreference;->l()V

    .line 113
    return-void
.end method

.method protected final a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ijinshan/kpref/VolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/SeekBarPreference;->a(Landroid/os/Parcelable;)V

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    check-cast p1, Lcom/ijinshan/kpref/VolumePreference$SavedState;

    .line 166
    invoke-virtual {p1}, Lcom/ijinshan/kpref/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/ijinshan/kpref/SeekBarPreference;->a(Landroid/os/Parcelable;)V

    .line 167
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    invoke-virtual {p1}, Lcom/ijinshan/kpref/VolumePreference$SavedState;->a()Lcom/ijinshan/kpref/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/aa;->b(Lcom/ijinshan/kpref/ac;)V

    goto :goto_0
.end method

.method protected final a(Lcom/ijinshan/kpref/aa;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    if-eq p1, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/aa;->c()V

    .line 140
    :cond_0
    return-void
.end method

.method protected final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/SeekBarPreference;->a(Z)V

    .line 104
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/aa;->b()V

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/ijinshan/kpref/VolumePreference;->l()V

    .line 109
    return-void
.end method

.method protected final b(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/SeekBarPreference;->b(Landroid/view/View;)V

    .line 68
    const v0, 0x10201f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 69
    new-instance v1, Lcom/ijinshan/kpref/aa;

    invoke-virtual {p0}, Lcom/ijinshan/kpref/VolumePreference;->D()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/ijinshan/kpref/VolumePreference;->p:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/ijinshan/kpref/aa;-><init>(Lcom/ijinshan/kpref/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    .line 71
    invoke-virtual {p0}, Lcom/ijinshan/kpref/VolumePreference;->I()Lcom/ijinshan/kpref/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/t;->a(Lcom/ijinshan/kpref/w;)V

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 78
    return-void
.end method

.method protected final d()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Lcom/ijinshan/kpref/SeekBarPreference;->d()Landroid/os/Parcelable;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/ijinshan/kpref/VolumePreference;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    :goto_0
    return-object v0

    .line 150
    :cond_0
    new-instance v1, Lcom/ijinshan/kpref/VolumePreference$SavedState;

    invoke-direct {v1, v0}, Lcom/ijinshan/kpref/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 151
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    invoke-virtual {v1}, Lcom/ijinshan/kpref/VolumePreference$SavedState;->a()Lcom/ijinshan/kpref/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/aa;->a(Lcom/ijinshan/kpref/ac;)V

    :cond_1
    move-object v0, v1

    .line 154
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 82
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    if-nez v0, :cond_0

    move v0, v2

    .line 96
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 84
    :goto_1
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 96
    goto :goto_0

    :cond_1
    move v0, v1

    .line 83
    goto :goto_1

    .line 86
    :pswitch_0
    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/aa;->a(I)V

    :cond_2
    move v0, v2

    .line 89
    goto :goto_0

    .line 91
    :pswitch_1
    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference;->q:Lcom/ijinshan/kpref/aa;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/aa;->a(I)V

    :cond_3
    move v0, v2

    .line 94
    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
