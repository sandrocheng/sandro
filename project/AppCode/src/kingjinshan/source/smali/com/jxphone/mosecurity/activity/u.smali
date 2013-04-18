.class final Lcom/jxphone/mosecurity/activity/u;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 948
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/activity/u;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 952
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 953
    const/4 v0, 0x1

    .line 955
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
