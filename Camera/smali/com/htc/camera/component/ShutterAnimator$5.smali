.class Lcom/htc/camera/component/ShutterAnimator$5;
.super Ljava/lang/Object;
.source "ShutterAnimator.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ShutterAnimator;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ShutterAnimator;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/htc/camera/component/ShutterAnimator$5;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    sget-object v1, Lcom/htc/camera/component/ShutterAnimator$6;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 278
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$5;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$600(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$5;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$700(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/IViewFinder3D;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$5;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    iget-object v1, p0, Lcom/htc/camera/component/ShutterAnimator$5;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;
    invoke-static {v1}, Lcom/htc/camera/component/ShutterAnimator;->access$700(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/IViewFinder3D;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/ShutterAnimator$5;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;
    invoke-static {v2}, Lcom/htc/camera/component/ShutterAnimator;->access$800(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/IViewFinder3D;->addPreviewFilterRenderer(Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/ShutterAnimator;->access$602(Lcom/htc/camera/component/ShutterAnimator;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$5;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_IsRunningFlashAnimation:Z
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$900(Lcom/htc/camera/component/ShutterAnimator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$5;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$600(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$5;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$700(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/IViewFinder3D;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/ShutterAnimator$5;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/ShutterAnimator;->access$600(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D;->removePreviewFilterRenderer(Lcom/htc/camera/Handle;)V

    .line 287
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$5;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/ShutterAnimator;->access$602(Lcom/htc/camera/component/ShutterAnimator;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method