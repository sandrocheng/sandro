.class final Lorg/antivirus/widget/activities/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/widget/activities/f;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/antivirus/widget/activities/f;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    iget-object v1, p0, Lorg/antivirus/widget/activities/f;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    invoke-static {v1}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->b(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antivirus/widget/a/i;

    iget-object v2, p0, Lorg/antivirus/widget/activities/f;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->b()I

    move-result v2

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v2, p0, Lorg/antivirus/widget/activities/f;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    invoke-static {v2}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->d(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)Lorg/antivirus/widget/a/k;

    move-result-object v2

    iget-object v3, p0, Lorg/antivirus/widget/activities/f;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    invoke-static {v3}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->c(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/widget/a/k;->a(II)V

    return-void
.end method
