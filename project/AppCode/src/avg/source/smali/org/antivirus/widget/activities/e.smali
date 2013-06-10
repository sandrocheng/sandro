.class final Lorg/antivirus/widget/activities/e;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

.field private b:[Lorg/antivirus/widget/a/i;


# direct methods
.method public constructor <init>(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/widget/activities/e;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    const v0, 0x7f030038

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lorg/antivirus/widget/activities/e;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    invoke-static {v0}, Lorg/antivirus/widget/a/i;->a(Landroid/content/Context;)[Lorg/antivirus/widget/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/widget/activities/e;->b:[Lorg/antivirus/widget/a/i;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/widget/activities/e;->b:[Lorg/antivirus/widget/a/i;

    array-length v0, v0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/widget/activities/e;->b:[Lorg/antivirus/widget/a/i;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final bridge synthetic getPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/antivirus/widget/activities/e;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lorg/antivirus/widget/activities/d;

    invoke-direct {v1}, Lorg/antivirus/widget/activities/d;-><init>()V

    const v0, 0x7f080106

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/widget/activities/d;->a:Landroid/widget/TextView;

    const v0, 0x7f080107

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/antivirus/widget/activities/d;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/widget/activities/d;

    iget-object v1, p0, Lorg/antivirus/widget/activities/e;->b:[Lorg/antivirus/widget/a/i;

    aget-object v1, v1, p1

    iget-object v2, p0, Lorg/antivirus/widget/activities/e;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/antivirus/widget/activities/d;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lorg/antivirus/widget/activities/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2
.end method
