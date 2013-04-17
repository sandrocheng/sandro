.class final Lbxv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;


# instance fields
.field private synthetic a:Lbxr$b;


# direct methods
.method constructor <init>(Lbxr$b;)V
    .locals 0

    iput-object p1, p0, Lbxv;->a:Lbxr$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final inflate(Landroid/app/Activity;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lbxv;->a:Lbxr$b;

    invoke-static {v0}, Lbxr$b;->a(Lbxr$b;)Lbxr$c;

    move-result-object v0

    iget-object v1, p0, Lbxv;->a:Lbxr$b;

    invoke-static {v1}, Lbxr$b;->b(Lbxr$b;)Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbxr$c;->a(Landroid/app/Activity;Landroid/content/res/Resources$Theme;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbxv;->a:Lbxr$b;

    invoke-static {v1}, Lbxr$b;->c(Lbxr$b;)Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :cond_0
    iget-object v1, p0, Lbxv;->a:Lbxr$b;

    invoke-static {v1}, Lbxr$b;->d(Lbxr$b;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbxv;->a:Lbxr$b;

    invoke-static {v1}, Lbxr$b;->a(Lbxr$b;)Lbxr$c;

    move-result-object v1

    invoke-virtual {v1}, Lbxr$c;->a()V

    return-object v0
.end method

.method public final inflate(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lbxv;->a:Lbxr$b;

    invoke-static {v0}, Lbxr$b;->a(Lbxr$b;)Lbxr$c;

    move-result-object v0

    iget-object v1, p0, Lbxv;->a:Lbxr$b;

    invoke-static {v1}, Lbxr$b;->b(Lbxr$b;)Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbxr$c;->a(Landroid/app/Activity;Landroid/content/res/Resources$Theme;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lbxv;->a:Lbxr$b;

    invoke-static {v1}, Lbxr$b;->d(Lbxr$b;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbxv;->a:Lbxr$b;

    invoke-static {v1}, Lbxr$b;->a(Lbxr$b;)Lbxr$c;

    move-result-object v1

    invoke-virtual {v1}, Lbxr$c;->a()V

    return-object v0
.end method
