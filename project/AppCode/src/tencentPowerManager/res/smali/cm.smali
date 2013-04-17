.class final Lcm;
.super Ljava/lang/Object;

# interfaces
.implements Le$b;


# instance fields
.field private synthetic a:Lbg;

.field private synthetic b:[Ljava/lang/String;

.field private synthetic c:Lck;


# direct methods
.method constructor <init>(Lck;Lbg;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm;->c:Lck;

    iput-object p2, p0, Lcm;->a:Lbg;

    iput-object p3, p0, Lcm;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcm;->c:Lck;

    iget-object v0, v0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v0

    iput p1, v0, Lbf;->e:I

    iget-object v0, p0, Lcm;->a:Lbg;

    iget-object v1, p0, Lcm;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Lbg;->c:Ljava/lang/String;

    iget-object v0, p0, Lcm;->c:Lck;

    iget-object v0, v0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->d(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lb;

    move-result-object v0

    invoke-virtual {v0}, Lb;->notifyDataSetChanged()V

    return-void
.end method
