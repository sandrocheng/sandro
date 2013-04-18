.class final Lcom/ijinshan/cleaner/ak;
.super Ljava/lang/Object;
.source "MonitorUninstallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;


# direct methods
.method synthetic constructor <init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/cleaner/ak;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/ijinshan/cleaner/ak;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcom/ijinshan/cleaner/ak;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->d(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/ijinshan/cleaner/ak;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->finish()V

    move v0, v1

    .line 302
    :goto_0
    return v0

    .line 295
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    move v0, v2

    .line 296
    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 300
    goto :goto_0

    :cond_2
    move v0, v1

    .line 302
    goto :goto_0
.end method
