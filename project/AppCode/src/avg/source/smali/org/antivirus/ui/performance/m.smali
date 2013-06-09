.class final Lorg/antivirus/ui/performance/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lorg/antivirus/ui/performance/j;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/performance/j;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/performance/m;->b:Lorg/antivirus/ui/performance/j;

    iput-object p2, p0, Lorg/antivirus/ui/performance/m;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/performance/m;->b:Lorg/antivirus/ui/performance/j;

    iget-object v0, v0, Lorg/antivirus/ui/performance/j;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/antivirus/ui/performance/m;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
