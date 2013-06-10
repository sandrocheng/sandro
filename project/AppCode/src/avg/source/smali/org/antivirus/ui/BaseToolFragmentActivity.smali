.class public abstract Lorg/antivirus/ui/BaseToolFragmentActivity;
.super Landroid/support/v4/app/f;


# instance fields
.field private m:Lorg/antivirus/core/EngineSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolFragmentActivity;->finish()V

    return-void
.end method

.method protected final a(IILjava/lang/String;)V
    .locals 3

    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/BaseToolFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v2, Lorg/antivirus/ui/BaseToolFragmentActivity$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lorg/antivirus/ui/BaseToolFragmentActivity$1;-><init>(Lorg/antivirus/ui/BaseToolFragmentActivity;Landroid/widget/Button;II)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lorg/antivirus/ui/BaseToolFragmentActivity$2;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/BaseToolFragmentActivity$2;-><init>(Lorg/antivirus/ui/BaseToolFragmentActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Lorg/antivirus/ui/BaseToolFragmentActivity$3;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/BaseToolFragmentActivity$3;-><init>(Lorg/antivirus/ui/BaseToolFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final a(Landroid/support/v4/app/Fragment;)V
    .locals 1

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()I

    return-void
.end method

.method protected final b()V
    .locals 0

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolFragmentActivity;->openOptionsMenu()V

    return-void
.end method

.method public getEngineSettings(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/BaseToolFragmentActivity;->m:Lorg/antivirus/core/EngineSettings;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/core/EngineSettings;

    invoke-direct {v0, p1}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/ui/BaseToolFragmentActivity;->m:Lorg/antivirus/core/EngineSettings;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/BaseToolFragmentActivity;->m:Lorg/antivirus/core/EngineSettings;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolFragmentActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
