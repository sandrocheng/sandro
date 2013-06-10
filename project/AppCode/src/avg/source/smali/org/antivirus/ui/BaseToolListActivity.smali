.class public abstract Lorg/antivirus/ui/BaseToolListActivity;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Landroid/widget/Button;

.field d:Lorg/antivirus/core/EngineSettings;

.field protected e:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/BaseToolListActivity;->a:Landroid/widget/Button;

    iput-object v0, p0, Lorg/antivirus/ui/BaseToolListActivity;->e:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/BaseToolListActivity;->d:Lorg/antivirus/core/EngineSettings;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/core/EngineSettings;

    invoke-direct {v0, p1}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/ui/BaseToolListActivity;->d:Lorg/antivirus/core/EngineSettings;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/BaseToolListActivity;->d:Lorg/antivirus/core/EngineSettings;

    return-object v0
.end method

.method protected a()V
    .locals 0

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolListActivity;->finish()V

    return-void
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method protected final a(IILjava/lang/String;Z)V
    .locals 3

    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/BaseToolListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v2, Lorg/antivirus/ui/BaseToolListActivity$3;

    invoke-direct {v2, p0, v0, p2, p1}, Lorg/antivirus/ui/BaseToolListActivity$3;-><init>(Lorg/antivirus/ui/BaseToolListActivity;Landroid/widget/Button;II)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lorg/antivirus/ui/BaseToolListActivity$4;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/BaseToolListActivity$4;-><init>(Lorg/antivirus/ui/BaseToolListActivity;)V

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

    iput-object v0, p0, Lorg/antivirus/ui/BaseToolListActivity;->a:Landroid/widget/Button;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/BaseToolListActivity;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/BaseToolListActivity;->a:Landroid/widget/Button;

    new-instance v1, Lorg/antivirus/ui/BaseToolListActivity$5;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/BaseToolListActivity$5;-><init>(Lorg/antivirus/ui/BaseToolListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f08000c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/BaseToolListActivity;->a:Landroid/widget/Button;

    new-instance v1, Lorg/antivirus/ui/BaseToolListActivity$6;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/BaseToolListActivity$6;-><init>(Lorg/antivirus/ui/BaseToolListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolListActivity;->openOptionsMenu()V

    return-void
.end method

.method public addMenu(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .locals 0

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolListActivity;->a()V

    return-void
.end method

.method protected final c(I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/antivirus/ui/BaseToolListActivity;->e:[Ljava/lang/String;

    iget-object v1, p0, Lorg/antivirus/ui/BaseToolListActivity;->e:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/antivirus/ui/BaseToolListActivity;->addMenu(Ljava/lang/Object;)V

    new-instance v1, Lorg/antivirus/tuneup/at;

    iget-object v2, p0, Lorg/antivirus/ui/BaseToolListActivity;->e:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lorg/antivirus/tuneup/at;-><init>(Landroid/content/Context;[Ljava/lang/String;B)V

    new-instance v2, Lorg/antivirus/ui/BaseToolListActivity$7;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/BaseToolListActivity$7;-><init>(Lorg/antivirus/ui/BaseToolListActivity;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public initHeader(Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/BaseToolListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08000c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f08000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lorg/antivirus/ui/BaseToolListActivity$1;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/BaseToolListActivity$1;-><init>(Lorg/antivirus/ui/BaseToolListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lorg/antivirus/ui/BaseToolListActivity$2;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/BaseToolListActivity$2;-><init>(Lorg/antivirus/ui/BaseToolListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/ui/BaseToolListActivity;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
