.class final Lcom/keniu/security/util/r;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    packed-switch p2, :pswitch_data_0

    .line 106
    :goto_0
    return v0

    .line 105
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method
