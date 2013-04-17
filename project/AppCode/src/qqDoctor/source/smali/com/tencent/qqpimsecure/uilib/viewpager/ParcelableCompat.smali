.class public Lcom/tencent/qqpimsecure/uilib/viewpager/ParcelableCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/viewpager/ParcelableCompat$CompatCreator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCreator(Lcom/tencent/qqpimsecure/uilib/viewpager/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/qqpimsecure/uilib/viewpager/ParcelableCompatCreatorCallbacks",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ParcelableCompat$CompatCreator;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ParcelableCompat$CompatCreator;-><init>(Lcom/tencent/qqpimsecure/uilib/viewpager/ParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method
