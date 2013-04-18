.class final Lcom/ijinshan/software/recommand/o;
.super Ljava/lang/Object;
.source "SoftwareRecommandTabActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ijinshan/software/recommand/o;->a:Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 50
    sparse-switch p2, :sswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 52
    :sswitch_0
    iget-object v0, p0, Lcom/ijinshan/software/recommand/o;->a:Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->a(Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :sswitch_1
    iget-object v0, p0, Lcom/ijinshan/software/recommand/o;->a:Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;->a(Lcom/ijinshan/software/recommand/SoftwareRecommandTabActivity;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "tab2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x7f080141 -> :sswitch_0
        0x7f080155 -> :sswitch_1
    .end sparse-switch
.end method
