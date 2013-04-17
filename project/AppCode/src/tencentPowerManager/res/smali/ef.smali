.class final Lef;
.super Ls$a;


# instance fields
.field private synthetic a:Lee;


# direct methods
.method constructor <init>(Lee;)V
    .locals 0

    iput-object p1, p0, Lef;->a:Lee;

    invoke-direct {p0}, Ls$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lef;->a:Lee;

    iget-object v0, v0, Lee;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->p(Lcom/tencent/powermanager/view/PowerManagerView;)V

    return-void
.end method
