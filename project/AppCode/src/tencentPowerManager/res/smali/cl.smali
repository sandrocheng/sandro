.class final Lcl;
.super Ljava/lang/Object;

# interfaces
.implements Le$b;


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Lbg;

.field private synthetic c:Lck;


# direct methods
.method constructor <init>(Lck;[Ljava/lang/String;Lbg;)V
    .locals 0

    iput-object p1, p0, Lcl;->c:Lck;

    iput-object p2, p0, Lcl;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcl;->b:Lbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcl;->c:Lck;

    iget-object v0, v0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v0

    iget-object v1, p0, Lcl;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lbf;->d:I

    iget-object v0, p0, Lcl;->b:Lbg;

    iget-object v1, p0, Lcl;->c:Lck;

    iget-object v1, v1, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    iget-object v2, p0, Lcl;->c:Lck;

    iget-object v2, v2, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v2}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v2

    iget v2, v2, Lbf;->d:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbg;->c:Ljava/lang/String;

    iget-object v0, p0, Lcl;->c:Lck;

    iget-object v0, v0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->d(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lb;

    move-result-object v0

    invoke-virtual {v0}, Lb;->notifyDataSetChanged()V

    return-void
.end method
