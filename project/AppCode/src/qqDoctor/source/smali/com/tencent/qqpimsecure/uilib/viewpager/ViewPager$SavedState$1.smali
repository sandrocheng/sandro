.class final Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/viewpager/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/qqpimsecure/uilib/viewpager/ParcelableCompatCreatorCallbacks",
        "<",
        "Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;
    .locals 1

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;
    .locals 1

    new-array v0, p1, [Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState$1;->newArray(I)[Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method
