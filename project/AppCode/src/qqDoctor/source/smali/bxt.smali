.class final Lbxt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;


# instance fields
.field private a:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lbxr$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbxr$a;->a(Lbxr$a;)Lbxr;

    move-result-object v0

    invoke-static {v0}, Lbxr;->a(Lbxr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lbxt;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final inflate(Landroid/app/Activity;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lbxt;->a:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final inflate(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lbxt;->a:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
