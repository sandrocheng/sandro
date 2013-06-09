.class public abstract Lorg/antivirus/ui/BaseToolTabActivity;
.super Landroid/app/TabActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolTabActivity;->finish()V

    return-void
.end method

.method protected final b()V
    .locals 0

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolTabActivity;->finish()V

    return-void
.end method

.method protected final c()V
    .locals 0

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolTabActivity;->openOptionsMenu()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolTabActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
