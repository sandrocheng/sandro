.class Lcom/antivirus/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/antivirus/widget/a;


# direct methods
.method constructor <init>(Lcom/antivirus/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/widget/b;->a:Lcom/antivirus/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcelable;Landroid/os/Parcelable;)I
    .locals 2

    check-cast p1, Lcom/avg/widget/model/plugin/WidgetPlugin;

    check-cast p2, Lcom/avg/widget/model/plugin/WidgetPlugin;

    invoke-virtual {p1}, Lcom/avg/widget/model/plugin/WidgetPlugin;->j()I

    move-result v0

    invoke-virtual {p2}, Lcom/avg/widget/model/plugin/WidgetPlugin;->j()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/avg/widget/model/plugin/WidgetPlugin;->j()I

    move-result v0

    invoke-virtual {p2}, Lcom/avg/widget/model/plugin/WidgetPlugin;->j()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/os/Parcelable;

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/widget/b;->a(Landroid/os/Parcelable;Landroid/os/Parcelable;)I

    move-result v0

    return v0
.end method
