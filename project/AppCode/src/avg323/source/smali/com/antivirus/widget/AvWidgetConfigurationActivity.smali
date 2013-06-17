.class public Lcom/antivirus/widget/AvWidgetConfigurationActivity;
.super Lcom/avg/widget/activities/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/widget/activities/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/avg/toolkit/e/a;)V
    .locals 2

    const v1, 0x7f080151

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/antivirus/widget/AvWidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/antivirus/widget/AvWidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
