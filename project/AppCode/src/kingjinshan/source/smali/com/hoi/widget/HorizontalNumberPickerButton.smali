.class public Lcom/hoi/widget/HorizontalNumberPickerButton;
.super Landroid/widget/ImageButton;
.source "HorizontalNumberPickerButton.java"


# instance fields
.field private a:Lcom/hoi/widget/HorizontalNumberPicker;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 61
    const v0, 0x7f080156

    invoke-virtual {p0}, Lcom/hoi/widget/HorizontalNumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPickerButton;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/HorizontalNumberPicker;->b()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const v0, 0x7f080157

    invoke-virtual {p0}, Lcom/hoi/widget/HorizontalNumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPickerButton;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/HorizontalNumberPicker;->c()V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/hoi/widget/HorizontalNumberPickerButton;->a()V

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/hoi/widget/HorizontalNumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/hoi/widget/HorizontalNumberPickerButton;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    .line 30
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/hoi/widget/HorizontalNumberPickerButton;->a()V

    .line 50
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/hoi/widget/HorizontalNumberPickerButton;->a(Landroid/view/MotionEvent;)V

    .line 35
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/hoi/widget/HorizontalNumberPickerButton;->a(Landroid/view/MotionEvent;)V

    .line 41
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method