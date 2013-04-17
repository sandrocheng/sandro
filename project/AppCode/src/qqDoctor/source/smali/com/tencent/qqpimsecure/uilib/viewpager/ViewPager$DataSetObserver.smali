.class Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$DataSetObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$DataSetObserver;->this$0:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$DataSetObserver;-><init>(Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$DataSetObserver;->this$0:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->dataSetChanged()V

    return-void
.end method
