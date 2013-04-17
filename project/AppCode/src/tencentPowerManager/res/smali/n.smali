.class final Ln;
.super Ljava/lang/Object;

# interfaces
.implements Ldm;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/tencent/powermanager/uilib/CheckBoxView;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLcom/tencent/powermanager/uilib/CheckBoxView;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Ln;->a:Z

    iput-object p2, p0, Ln;->b:Lcom/tencent/powermanager/uilib/CheckBoxView;

    iput-object p3, p0, Ln;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Dialog;)V
    .locals 2

    iget-boolean v0, p0, Ln;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln;->b:Lcom/tencent/powermanager/uilib/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/CheckBoxView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ls$a;->g()Lz;

    move-result-object v0

    iget-object v1, p0, Ln;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lz;->f(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    sput-boolean v0, Le;->a:Z

    return-void
.end method
