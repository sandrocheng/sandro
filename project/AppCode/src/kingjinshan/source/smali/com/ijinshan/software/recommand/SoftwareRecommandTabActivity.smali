.class public Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;
.super Landroid/app/TabActivity;
.source "SoftwareRecommandTabActivity.java"


# instance fields
.field private a:Landroid/widget/RadioGroup;

.field private b:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->b:Landroid/widget/TabHost;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 23
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0, v4}, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->requestWindowFeature(I)Z

    .line 26
    const v0, 0x7f0300fa

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->setContentView(I)V

    .line 27
    const v0, 0x7f08037b

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->a:Landroid/widget/RadioGroup;

    .line 29
    invoke-virtual {p0}, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->b:Landroid/widget/TabHost;

    .line 31
    if-nez p1, :cond_0

    .line 33
    const-string v0, "softwarerecommand"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->b:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->b:Landroid/widget/TabHost;

    const-string v2, "tab1"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b0708

    invoke-virtual {p0, v2}, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 43
    iget-object v0, p0, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->b:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->b:Landroid/widget/TabHost;

    const-string v2, "tab2"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b0709

    invoke-virtual {p0, v2}, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 47
    iget-object v0, p0, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->a:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/ijinshan/software/recommand/o;

    invoke-direct {v1, p0}, Lcom/ijinshan/software/recommand/o;-><init>(Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 62
    iget-object v0, p0, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->b:Landroid/widget/TabHost;

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 63
    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    .line 64
    invoke-virtual {p0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 65
    return-void
.end method
