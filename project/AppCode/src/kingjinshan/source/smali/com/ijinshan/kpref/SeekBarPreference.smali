.class public Lcom/ijinshan/kpref/SeekBarPreference;
.super Lcom/ijinshan/kpref/DialogPreference;
.source "SeekBarPreference.java"


# static fields
.field private static final o:Ljava/lang/String; = "SeekBarPreference"


# instance fields
.field private p:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/ijinshan/kpref/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const v0, 0x109005d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/SeekBarPreference;->a(I)V

    .line 38
    invoke-virtual {p0}, Lcom/ijinshan/kpref/SeekBarPreference;->g()V

    .line 39
    invoke-virtual {p0}, Lcom/ijinshan/kpref/SeekBarPreference;->h()V

    .line 42
    invoke-virtual {p0}, Lcom/ijinshan/kpref/SeekBarPreference;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/SeekBarPreference;->p:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {p0}, Lcom/ijinshan/kpref/SeekBarPreference;->e()V

    .line 44
    return-void
.end method

.method private static c(Landroid/view/View;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 59
    const v0, 0x10201f0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SeekBar;

    return-object p0
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/DialogPreference;->b(Landroid/view/View;)V

    .line 50
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    iget-object v1, p0, Lcom/ijinshan/kpref/SeekBarPreference;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/ijinshan/kpref/SeekBarPreference;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
