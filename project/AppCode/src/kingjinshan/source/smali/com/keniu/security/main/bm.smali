.class final Lcom/keniu/security/main/bm;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1773
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/main/bm;-><init>(Lcom/keniu/security/main/MainActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/main/MainActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/keniu/security/main/bm;->a:Lcom/keniu/security/main/MainActivity;

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
    .line 1777
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 1778
    const/4 v0, 0x1

    .line 1780
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
